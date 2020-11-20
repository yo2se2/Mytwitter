
// tweetの投稿画面を出す機能
function  tweetscreen(){
    backcontainer = document.querySelector('.back-container');
    backcontainer.classList.toggle("up");
}

btn = document.querySelector('.tweet-button');
btn.addEventListener('click',tweetscreen);
close_btn = document.querySelector('.close__btn');
close_btn.addEventListener('click',tweetscreen);


