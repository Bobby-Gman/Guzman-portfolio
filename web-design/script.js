document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.add-to-cart').forEach(item => {
        item.addEventListener('click', () => {
            const artworkId = item.closest('.artwork-item').id;
            addToCart(artworkId);
        });
    });
});

function addToCart(artworkId) {
    alert(artworkId + ' has been added to your cart.');
}

function removeItem(button) {
    const row = button.closest('tr');
    row.remove();
    updateTotal(); 
}

function updateTotal() {
    const items = document.querySelectorAll('#cart-items tr');
    let total = 0;
    
    items.forEach(item => {
        const priceCell = item.querySelector('.item-price');
        const totalCell = item.querySelector('.item-total');
        const quantityInput = item.querySelector('input[name="item-quantity"]');
        
        if (priceCell && totalCell && quantityInput) {
            const price = parseFloat(priceCell.textContent.replace('$', ''));
            const quantity = parseInt(quantityInput.value);
            const itemTotal = price * quantity;
            totalCell.textContent = '$' + itemTotal.toFixed(2);
            total += itemTotal;
        }
    });

    document.getElementById('total-price').textContent = '$' + total.toFixed(2);
}

document.addEventListener('DOMContentLoaded', updateTotal);