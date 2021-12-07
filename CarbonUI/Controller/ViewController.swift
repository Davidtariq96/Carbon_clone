//
//  ViewController.swift
//  CarbonUI
//
//  Created by Decagon on 30/11/2021.
//

import UIKit

class ViewController: UIViewController {

    let cell = "cell"
    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout ()
       layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        collectionView.isPagingEnabled  = true
        collectionView.register(CarbonViewCell.self, forCellWithReuseIdentifier:"cell")
        return collectionView
    }()
    
    let pages: [PageModel] = {
        let initialPage = PageModel(title: "Go beyond banking", message: "Welcome to the future. Carbon is your password to world-class financial services, built just for you.", pageImage: "phone")
        let secondPage = PageModel(title: "Stay on top of your finances. Anytime. Anywhere", message: "Carbon makes financial services faster, cheaper and more convenient.You can access the app 24/7, where ever you are.", pageImage: "card")
        let lastPage = PageModel(title: "Trusted by Millions", message: "With Carbon's market-leading service already used by millions of people just like you, you're in a very good company.", pageImage: "user")
       return [initialPage, secondPage, lastPage]
    }()
    let uibutton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Set up new account", for: .normal)
        button.layer.cornerRadius = 7
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapNewAcccount), for: .touchUpInside)
        button.backgroundColor = UIColor(red: 67 / 255, green: 1 / 255, blue: 192 / 255, alpha: 1)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        view.addSubview(uibutton)
        view.backgroundColor = .systemPink
        collectionView.frame = view.bounds
        collectionView.dataSource = self
        collectionView.delegate = self
        
        uibutton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        uibutton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        uibutton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        uibutton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor(red: 67/255, green: 1/255, blue: 192/255, alpha: 1)
    }
    
    @objc func tapSkip() {
        let vc = CreateAccount()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func tapSignIn () {
        let screen = SignInViewController()
        navigationController?.pushViewController(screen, animated: true)
    }
    @objc func didTapNewAcccount() {
        let secondVC = CreateAccount()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CarbonViewCell else { return UICollectionViewCell()}
        let page = pages[indexPath.item]
        cell.page = page
        if indexPath.row >= 1 {
            self.navigationItem.rightBarButtonItem = UIBarButtonItem (title: "Sign in", style: .plain, target: self, action: #selector(tapSkip))
        } else {
            self.navigationItem.rightBarButtonItem = UIBarButtonItem (title: "Skip", style: .plain, target: self, action: #selector(tapSignIn))
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: view.frame.width, height: view.frame.height)
    }

}
