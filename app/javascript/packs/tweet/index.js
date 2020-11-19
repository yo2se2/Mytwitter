function  tweetscreen(){
    backcontainer = document.querySelector('.back-container');
    backcontainer.classList.add("up");
}

btn = document.querySelector('.tweet-button');
btn.addEventListener('click',tweetscreen);

