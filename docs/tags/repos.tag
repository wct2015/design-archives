<repos>

  <ul class="s-repos__list">
    <li each={ repos_list } class="s-repos__item">
      <div class="s-repo">
        <a href="{ html_url }">
          <div class="s-repo__thumb">
            <img src="./images/repos/img_{ name }.png">
          </div>
          <div class="s-repo__content">
            <p class="s-repo__name">{ name }</p>
            <p class="s-repo__description">{ description }</p>
            <p class="s-repo__date">Updated at { updated_at.substr(0, 10) }</p>
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

    self.repos_list = [];

    fetch('https://api.github.com/users/wct2015/repos')
      .then(function (result) {
        return result.json()
      })
      .then(function (data) {
        self.repos_list = data;
        self.update();

      })

  </script>

</repos>
