import 'whatwg-fetch';

export const fetchActionData = (params) => {
  return fetch('https://easy-mock.com/mock/5ac3275ea0fd783c080ec328/migumnusic/api/dingdong/migumusic/listAllMembers.json')
    .then(function (response) {
      return response.json()
    }).catch(function (ex) {
      console.log('parsing failed', ex)
    })
}