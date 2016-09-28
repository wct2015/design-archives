'use strict';

import $ from 'jquery';

$(() => {

  const $button = $('.l-nav__toggle');
  const $menu   = $('.l-nav__list');

  $button.on('click', () => {
    $menu.slideToggle();
  });

});
