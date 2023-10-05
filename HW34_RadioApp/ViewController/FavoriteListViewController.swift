//
//  FavoriteListViewController.swift
//  HW#34_RadioApp
//
//  Created by Dawei Hao on 2023/9/24.
//

import UIKit

class FavoriteListViewController: UIViewController {

    var tableView = UITableView()

    var selectedIndex: Int?

    var loveBtnStates: [Int: Bool] = [:]

    struct Cells {
        static let channelName = "Cell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureTableView()

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: Cells.channelName)

        print("getInFavoriteListVC")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Setup UI
    func configureTableView() {
        setTableViewDelegate()
        self.tableView.rowHeight = 100
        tableView.frame = self.view.bounds
        self.view.addSubview(tableView)
    }

    func setTableViewDelegate () {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    @objc func loveBtnTapped(_ sender: UIButton) {
        loveBtnStates[sender.tag] = !(loveBtnStates[sender.tag] ?? false)
        if loveBtnStates[sender.tag]! {
            sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            FavoritesManager.shared.receivedDataArray.append(sender.tag)
            print(FavoritesManager.shared.receivedDataArray)
        } else {
            sender.setImage(UIImage(systemName: "heart"), for: .normal)
            if let index = FavoritesManager.shared.receivedDataArray.firstIndex(of: sender.tag) {
                FavoritesManager.shared.receivedDataArray.remove(at: index)
                print(FavoritesManager.shared.receivedDataArray)
            }
        }
        print("loveBtnTapped")
    }
}


    // MARK: - Import UITableViewDelegate, UITableViewDataSource
extension FavoriteListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FavoritesManager.shared.receivedDataArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.channelName, for: indexPath)
        var content = cell.defaultContentConfiguration()

        // 获取对应 indexPath 的数据
        let radioStationData = FavoritesManager.shared.receivedDataArray[indexPath.row]

        // Add accessoryButton for accessoryView
        let loveBtn = UIButton(type: .custom)
        loveBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        loveBtn.sizeToFit()
        loveBtn.isUserInteractionEnabled = true
        loveBtn.addTarget(self, action: #selector(loveBtnTapped), for: .touchUpInside)
        loveBtn.tag = indexPath.row

        cell.accessoryView = loveBtn

        // Add selectionStyle as gray.
        cell.selectionStyle = .gray

        // Content setup for title.
        content.text = RadioStationsList[radioStationData].channelName
        content.textProperties.adjustsFontSizeToFitWidth = true
        content.textProperties.numberOfLines = 0
        content.textProperties.color = UIColor.darkGray
        content.textProperties.alignment = .natural

        // Content setup for subtitle.
        content.secondaryText = RadioStationsList[radioStationData].quality
        content.secondaryTextProperties.adjustsFontSizeToFitWidth = true
        content.secondaryTextProperties.numberOfLines = 0
        content.secondaryTextProperties.color = UIColor.lightGray
        content.secondaryTextProperties.alignment = .natural

        content.image = UIImage(named: RadioStationsList[radioStationData].channelName)
        content.imageProperties.cornerRadius = 40

        // Setup padding for image to text.
        content.imageToTextPadding = 20
        cell.contentConfiguration = content


        return cell
    }

}
