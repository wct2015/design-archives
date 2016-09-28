'use strict';

import $ from 'jquery';

$(() => {

  const $button = $('.l-nav__toggle');
  const $icon   = $('.l-nav__icon');
  const $menu   = $('.l-nav__list');

  $button.on('click', () => {
    $icon.toggleClass('l-nav__icon--is-open');
    $menu.slideToggle();
  });

});
