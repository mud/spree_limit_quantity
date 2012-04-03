(function($) {
  $(function() {
    $('input[type="number"]').on('blur', function() {
      var $this = $(this);
      if ($this.attr('max') && parseInt($this.attr('max')) < $this.attr('value')) {
        $this.attr('value', $this.attr('max'));
        alert('There are only ' + $this.attr('max') + ' items available for this product.');
      }
    });
  });
})(jQuery);