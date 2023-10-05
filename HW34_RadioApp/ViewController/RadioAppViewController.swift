//
//  RadioAppViewController.swift
//  HW#34_RadioApp
//
//  Created by Dawei Hao on 2023/9/8.
//

import UIKit
import AVFoundation

class RadioAppViewController: UIViewController {

        var tableView = UITableView()
        var player    : AVPlayer?

        let playerView                = UIView  ()
        let statusBtn                 = UIButton()
        let radioStationTitleLabel    = UILabel ()
        let radioStationSubtitleLabel = UILabel ()

        let radioStationImage         = UIImageView()

        var loveBtnStates: [Int: Bool] = [:]

        var filteredRadioStations: [RadioStationsInfo] = []

        struct Cells {
            static let channelName = "Cell"
        }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        configureTableView   ()
        configureSearchBar   ()
        setTableViewDelegate ()
        handlePlayAndPause   ()
        doubleTappedView     ()

        filteredRadioStations = RadioStationsList

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: Cells.channelName)
            print("Number of stations: \(RadioStationsList.count)")

         tableView.reloadData()
        }

        // Sent to the view controller when the app receives a memory warning.
        override func didReceiveMemoryWarning() {
              super.didReceiveMemoryWarning()
              // Dispose of any resources that can be recreated.
            print("didReceiveMemoryWarning")
        }

        // MARK: - Setup UI
        func configureTableView() {
            tableView.frame = self.view.bounds
            self.tableView.rowHeight = 100
            self.view.addSubview(tableView)
            print("configureTableView success")
        }


        // Import delegate
        func setTableViewDelegate () {
            self.tableView.delegate = self
            self.tableView.dataSource = self
            print("setTableViewDelegate success")
        }

        func configureSearchBar () {
            let searchController = UISearchController()
            searchController.searchResultsUpdater = self
            searchController.automaticallyShowsCancelButton = true
            searchController.searchBar.placeholder = "Search for Radio Stations"
            searchController.isActive = true
            navigationItem.searchController = searchController
            navigationItem.hidesSearchBarWhenScrolling = false
            definesPresentationContext = true
            print("configureSearchBar success")
        }

        func doubleTappedView () {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTapped))
        tapGesture.numberOfTapsRequired = 2
        view.addGestureRecognizer(tapGesture)
        }

        @objc func handlePlayAndPause () {
            if player?.timeControlStatus == .paused {
                    player?.play()
                    statusBtn.setImage(UIImage(systemName: "pause.fill"), for: .normal)
                    statusBtn.setupBtnWhenTappedBecomeSmaller()
                    print("play")
                } else {
                    player?.pause()
                    statusBtn.setImage(UIImage(systemName: "play.fill"), for: .normal)
                    statusBtn.setupBtnWhenTappedBecomeNormal()
                    print("pause")
                }
            }

        @objc func loveBtnTapped(_ sender: UIButton) {
            loveBtnStates[sender.tag] = !(loveBtnStates[sender.tag] ?? false)
            if loveBtnStates[sender.tag]! {
                sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                FavoritesManager.shared.receivedDataArray.append(sender.tag)
                print(FavoritesManager.shared.receivedDataArray)
                addedToFavoriteListView()
            } else {
                sender.setImage(UIImage(systemName: "heart"), for: .normal)
                if let index = FavoritesManager.shared.receivedDataArray.firstIndex(of: sender.tag) {
                FavoritesManager.shared.receivedDataArray.remove(at: index)
                print(FavoritesManager.shared.receivedDataArray)
                removedToFavoriteListView()
            }
        }
        print("loveBtnTapped")
    }

        @objc func handleDoubleTapped () {
            playerView.isHidden = true
            print("handleDoubleTapped")
        }

        func addedToFavoriteListView() {
            let addedView = UIView()
            addedView.backgroundColor = UIColor.systemGray5
            addedView.layer.cornerRadius = 15
            addedView.translatesAutoresizingMaskIntoConstraints = false  // Enable Auto Layout
            tableView.addSubview(addedView)

            // Constraints for addedView
            NSLayoutConstraint.activate([
                addedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                addedView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                addedView.widthAnchor.constraint(equalToConstant: 200),
                addedView.heightAnchor.constraint(equalToConstant: 190)
            ])

            let addedLabel = UILabel()
            addedLabel.text = "Added to Favorite List"
            addedLabel.textColor = UIColor.systemGray
            addedLabel.textAlignment = .center
            addedLabel.adjustsFontSizeToFitWidth = true
            addedLabel.translatesAutoresizingMaskIntoConstraints = false  // Enable Auto Layout
            addedView.addSubview(addedLabel)

            // Constraints for addedLabel
            NSLayoutConstraint.activate([
                addedLabel.centerXAnchor.constraint(equalTo: addedView.centerXAnchor),
                addedLabel.bottomAnchor.constraint(equalTo: addedView.bottomAnchor, constant: -30),
                addedLabel.widthAnchor.constraint(equalTo: addedView.widthAnchor, constant: -40),
                addedLabel.heightAnchor.constraint(equalToConstant: 25)
            ])

            let addedLoveIcon = UIImageView(image: UIImage(systemName: "heart.fill"))
            addedLoveIcon.tintColor = UIColor.systemPink
            addedLoveIcon.translatesAutoresizingMaskIntoConstraints = false  // Enable Auto Layout
            addedView.addSubview(addedLoveIcon)

            // Constraints for addedLoveIcon
            NSLayoutConstraint.activate([
                addedLoveIcon.centerXAnchor.constraint(equalTo: addedView.centerXAnchor),
                addedLoveIcon.centerYAnchor.constraint(equalTo: addedView.centerYAnchor, constant: -10),
                addedLoveIcon.widthAnchor.constraint(equalToConstant: 100),
                addedLoveIcon.heightAnchor.constraint(equalToConstant: 90)
            ])

            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {  // Change 2.0 to the number of seconds you want addedView to be visible
                UIView.animate(withDuration: 0.08, animations: {
                     addedView.alpha = 0  // Fade out
                 }) { (finished) in
                     if finished {
                         addedView.removeFromSuperview()  // Remove from parent view
                     }
                 }
             }
            print("addedToFavoriteListView")
        }

    func removedToFavoriteListView() {
        let removedView = UIView()
        removedView.backgroundColor = UIColor.systemGray5
        removedView.layer.cornerRadius = 10
        removedView.translatesAutoresizingMaskIntoConstraints = false  // Enable Auto Layout
        tableView.addSubview(removedView)

        // Constraints for removedView
        NSLayoutConstraint.activate([
            removedView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            removedView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            removedView.widthAnchor.constraint(equalToConstant: 200),
            removedView.heightAnchor.constraint(equalToConstant: 190)
        ])

        let removedLabel = UILabel()
        removedLabel.text = "Removed to Favorite List"
        removedLabel.textColor = UIColor.systemGray
        removedLabel.textAlignment = .center
        removedLabel.adjustsFontSizeToFitWidth = true
        removedLabel.translatesAutoresizingMaskIntoConstraints = false  // Enable Auto Layout
        removedView.addSubview(removedLabel)

        // Constraints for removedLabel
        NSLayoutConstraint.activate([
            removedLabel.centerXAnchor.constraint(equalTo: removedView.centerXAnchor),
            removedLabel.bottomAnchor.constraint(equalTo: removedView.bottomAnchor, constant: -30),
            removedLabel.widthAnchor.constraint(equalTo: removedView.widthAnchor, constant: -40),
            removedLabel.heightAnchor.constraint(equalToConstant: 25)
        ])

        let removedLoveImage = UIImageView(image: UIImage(systemName: "heart"))
        removedLoveImage.tintColor = UIColor.systemPink
        removedLoveImage.translatesAutoresizingMaskIntoConstraints = false  // Enable Auto Layout
        removedView.addSubview(removedLoveImage)

        // Constraints for removedLoveImage
        NSLayoutConstraint.activate([
            removedLoveImage.centerXAnchor.constraint(equalTo: removedView.centerXAnchor),
            removedLoveImage.centerYAnchor.constraint(equalTo: removedView.centerYAnchor, constant: -10),
            removedLoveImage.widthAnchor.constraint(equalToConstant: 100),
            removedLoveImage.heightAnchor.constraint(equalToConstant: 90)
        ])

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {  // Change 2.0 to the number of seconds you want addedView to be visible
            UIView.animate(withDuration: 0.08, animations: {
                 removedView.alpha = 0  // Fade out
             }) { (finished) in
                 if finished {
                     removedView.removeFromSuperview()  // Remove from parent view
                 }
             }
         }
        print("removedToFavoriteListView")
    }

    }
        // MARK: - UITableViewDelegate & UITableViewDataSource
    extension RadioAppViewController: UITableViewDelegate, UITableViewDataSource {
    
    //tableView
    //Showing how many section we need in tableView.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let radioStationChannelName = filteredRadioStations.count
        print(radioStationChannelName)
        return radioStationChannelName
    }
    
    // Showing what content we need in tableView.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // dequeueReusableCellwtih Identifier for Cells.channelName
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.channelName, for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        // Create an Instance for radioStationInfo and store the property for RadioStationList[indexPath.row]
        let radioStation = filteredRadioStations[indexPath.row]
        let radioStationName = radioStation.channelName
        let radioStationQuality = radioStation.quality

        // Add accessoryButton for accessoryView
        let loveBtn = UIButton(type: .custom)
        loveBtn.setImage(UIImage(systemName: loveBtnStates[indexPath.row] ?? false ? "heart.fill" : "heart"), for: .normal)
        loveBtn.sizeToFit()
        loveBtn.isUserInteractionEnabled = true
        loveBtn.addTarget(self, action: #selector(loveBtnTapped), for: .touchUpInside)
        loveBtn.tag = indexPath.row

        cell.accessoryView = loveBtn

        // Add selectionStyle as gray.
        cell.selectionStyle = .gray

        // Content setup for title.
        content.text = radioStationName
        content.textProperties.adjustsFontSizeToFitWidth = true
        content.textProperties.numberOfLines = 0
        content.textProperties.color = UIColor.darkGray
        content.textProperties.alignment = .natural
        
        // Content setup for subtitle.
        content.secondaryText = radioStationQuality
        content.secondaryTextProperties.adjustsFontSizeToFitWidth = true
        content.secondaryTextProperties.numberOfLines = 0
        content.secondaryTextProperties.color = UIColor.lightGray
        content.secondaryTextProperties.alignment = .natural

        content.image = UIImage(named: radioStationName)
        content.imageProperties.cornerRadius = 40
        
        // Setup padding for image to text.
        content.imageToTextPadding = 20
        cell.contentConfiguration = content
        
        return cell
    }
    
    // DeselectRow in tableView
        fileprivate func configureMusicPlayBar() {

            playerView.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 0.8)
            view.addSubview(playerView)
            playerView.layer.addShadow()

            playerView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                playerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
                playerView.widthAnchor.constraint(equalTo: view.widthAnchor),
                playerView.heightAnchor.constraint(equalToConstant: 80)
            ])

            let configuration = UIImage.SymbolConfiguration(pointSize: 30)
            statusBtn.setPreferredSymbolConfiguration(configuration, forImageIn: .normal)
            statusBtn.frame = CGRect(x: 320, y: 10, width: 60, height: 60)
            statusBtn.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            statusBtn.imageView?.contentMode = .scaleToFill
            statusBtn.addTarget(self, action: #selector(handlePlayAndPause), for: .touchUpInside)

            statusBtn.sizeThatFits(CGSize(width: 80, height: 80))
            statusBtn.isUserInteractionEnabled = true
            statusBtn.tintColor = UIColor.darkGray
            playerView.addSubview(statusBtn)

            // radioStationTitleLabel
            radioStationTitleLabel.frame = CGRect(x: 90, y: 18, width: 230, height: 30)
            radioStationTitleLabel.font = UIFont.systemFont(ofSize: 20)
            //radioStationTitleLabel.text = "Loading..."
            radioStationTitleLabel.numberOfLines = 0
            radioStationTitleLabel.adjustsFontSizeToFitWidth = true
            radioStationTitleLabel.textColor = UIColor.darkGray
            playerView.addSubview(radioStationTitleLabel)

            // radioStationTitleLabel
            radioStationSubtitleLabel.frame = CGRect(x: 90, y: 45, width: 100, height: 20)
            radioStationSubtitleLabel.font = UIFont.systemFont(ofSize: 12)
            //radioStationSubtitleLabel.text = "Loading..."
            radioStationSubtitleLabel.numberOfLines = 0
            radioStationSubtitleLabel.adjustsFontSizeToFitWidth = true
            radioStationSubtitleLabel.textColor = UIColor.lightGray
            playerView.addSubview(radioStationSubtitleLabel)

            // radioStationImage
            let radioStationImageWidthAndHeight: CGFloat = 60
            radioStationImage.frame = CGRect(x: 20, y: 10, width: 60, height: 60)
            radioStationImage.backgroundColor = UIColor.systemGray5
            radioStationImage.contentMode = .scaleToFill
            radioStationImage.layer.cornerRadius = radioStationImageWidthAndHeight / 2
            radioStationImage.clipsToBounds = true
            radioStationImage.layer.borderColor = UIColor.darkGray.cgColor
            radioStationImage.layer.borderWidth = 0.05
            playerView.addSubview(radioStationImage)
        }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)

            let radioStationInfo = RadioStationsList[indexPath.row].channelName
            let radioStationQuality = RadioStationsList[indexPath.row].quality

            radioStationTitleLabel.text = radioStationInfo
            radioStationSubtitleLabel.text = radioStationQuality
            radioStationImage.image = UIImage(named: radioStationInfo)
            configureMusicPlayBar()

            playerView.isHidden = false

            // Let url links to RadioStationList[indexPath.row].steamURL
            if let url = URL.init(string: RadioStationsList[indexPath.row].steamURL) {
                let playerItem: AVPlayerItem = AVPlayerItem(url: url)
                player = AVPlayer(playerItem: playerItem)
                player?.play()
            }
        }
    }
    // MARK: - Configure Shadow
    extension CALayer {
        func addShadow() {
            self.shadowOffset  = .zero
            self.shadowOpacity = 0.3
            self.shadowRadius  = 15
            self.shadowColor   = UIColor.black.cgColor
            self.masksToBounds = false
        }
    }

// MARK: - SearchController
extension RadioAppViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text, !searchText.isEmpty {
            filteredRadioStations = RadioStationsList.filter {
                $0.channelName.localizedStandardContains(searchText)
            }
        } else {
            filteredRadioStations = RadioStationsList
        }
        tableView.reloadData()
    }
}




