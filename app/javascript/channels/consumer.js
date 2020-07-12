// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.

import { createConsumer } from "@rails/actioncable"

export default createConsumer()



/*const data = [
    { name: "東京タワー", lat: 35.6585805, lng: 139.7454329 },
    { name: "京都タワー", lat: 34.9875441, lng: 135.7592164 },
    { name: "通天閣", lat: 34.6524992, lng: 135.5063058 }
    ];

    let map;
    let geocoder;
    let places;
    let marker;

    function initMap(){
        // geocoderを初期化
        geocoder = new google.maps.Geocoder();
        // placeを初期化
        places = new google.maps.places.PlacesService(map);

        let center = {
            lat: 34.7, lng: 135.5
        };

        map = new google.maps.Map(document.getElementById('map'), {
        center: center,
        zoom: 15
        });

        map.fitBounds(new google.maps.LatLngBounds(
        // sw
        {
            lat: Math.min(...data.map(d => d.lat)),
            lng: Math.min(...data.map(d => d.lng))
        },
        // ne
        {
            lat: Math.max(...data.map(d => d.lat)),
            lng: Math.max(...data.map(d => d.lng))
        }
        ));

        data.map(d => {
            marker = new google.maps.Marker({ // マーカーの追加
                position: {lat: d.lat, lng: d.lng}, // マーカーを立てる位置を指定
                map: map // マーカーを立てる地図を指定
            });
        });
    }

    function codeAddress(){
        // 入力を取得
        let inputAddress = document.getElementById('address').value;

        // geocodingしたあとmapを移動
        geocoder.geocode( { 'address': inputAddress}, function(results, status) {
            if (status == 'OK') {
        　　 // map.setCenterで地図が移動
            map.setCenter(results[0].geometry.location);

        　　 // google.maps.MarkerでGoogleMap上の指定位置にマーカが立つ
            var marker = new google.maps.Marker({
                map: map,
                position: results[0].geometry.location
            });
            } else {
            alert('Geocode was not successful for the following reason: ' + status);
            }
        });

        places.findPlaceFromQuery( { 'address': inputAddress}, function(results, status) {
            if (status === google.maps.places.PlacesServiceStatus.OK) {
            for (var i = 0; i < results.length; i++) {
                createMarker(results[i]);
            }
            map.setCenter(results[0].geometry.location);

            marker = new google.maps.Marker({
                map: map,
                position: results[0].geometry.location
            });
            }
        });
    }*/



    


    /**
    var map;

    // geocoderを初期化
    let geocoder = new google.maps.Geocoder();
    // placeを初期化
    let places = new google.maps.places.PlacesService(map);

    
    function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 15,
    });
    }

    let a = navigator.geolocation.getCurrentPosition(get_pos);
    function get_pos(position) {
    let lat = position.coords.latitude;　// 緯度
    let lng = position.coords.longitude; // 経度
    let latLng = new google.maps.LatLng(lat, lng);
    var marker = new google.maps.Marker({　// 現在地の位置設定
        position: latLng,
        map: map
    });
    map.setCenter(latLng);　// 地図の中央に現在地を表示する
    }
     */