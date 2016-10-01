<repos>

  <ul class="s-repos__list">
    <li class="s-repos__item">
      <div class="s-repo"><a href="">
          <div class="s-repo__thumb"><img src="./images/repos/img_folder.png"></div>
          <div class="s-repo__content">
            <p class="s-repo__name">{ name }</p>
            <p class="s-repo__description">クリアファイル</p>
            <p class="s-repo__date">Updated at 2016-09-12</p>
          </div>
          <div class="s-repo__overlay">
            <p class="s-repo__text s-repo__text--ja">リポジトリをみる</p>
            <p class="s-repo__text s-repo__text--en">VIEW ON GITHUB</p>
          </div>
        </a>
      </div>
    </li>
  </ul>

  <script>
    var self = this

    fetch('https://api.github.com/users/wct2015/repos')
      .then(function (data) {
        return data.json()
      })
      .then(function (json) {
        self.name = json[ 0 ].name
        self.update()
      })
  </script>

</repos>
