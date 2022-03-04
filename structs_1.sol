// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;
contract Struct_1{
    struct Car{
        string model;
        uint year;
        address owner;
    }
    Car[] public cars;

    function example() external {
        //these are the way we can intialize the data in array of Car
        Car memory Honda = Car("Honda",2002,msg.sender);
        Car memory Audi = Car({model:"Audi",owner:msg.sender,year:2004});
        Car memory Merc;
        Merc.model = "Merc";
        Merc.year = 2020;
        Merc.owner = msg.sender;

        cars.push(Honda);
        cars.push(Audi);
        cars.push(Merc);
        //you can directly push.
        cars.push(Car("Thar",2021,msg.sender));
        // how we can modify the stored string in array, for example here we have 

        Car storage _car = cars[0];//here we cannot put the memory because the storage is use for store and if you want to modify something you have to use the storage.
                                  //_car is new object we cannot change in array of Car.
        _car.year = 2005;
        delete _car.owner;//delete.
        delete cars[1];//here you can delete the entire array of index 1 which are presneted inside the cars.


    }
}