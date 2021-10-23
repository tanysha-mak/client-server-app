import React from 'react';
import logo from "../assets/images/brand.jpg";
import { MDBListGroup, MDBListGroupItem, MDBIcon } from 'mdbreact';
import { NavLink } from 'react-router-dom';

const TopNavigation = ({logOut}) => {
    return (
        <div className="sidebar-fixed position-fixed">
            <a href="#!" className="logo-wrapper waves-effect">
                <img alt="MDB React Logo" className="img-fluid" src={logo}/>
            </a>
            <MDBListGroup className="list-group-flush">
                <NavLink exact={true} to="/" activeClassName="activeClass">
                    <MDBListGroupItem>
                        <MDBIcon icon="user" className="mr-3"/>
                        Мой профиль
                    </MDBListGroupItem>
                </NavLink>
                <NavLink to="/docs" activeClassName="activeClass">
                    <MDBListGroupItem>
                        <MDBIcon icon="file-alt" className="mr-3"/>
                        Все документы
                    </MDBListGroupItem>
                </NavLink>
                <NavLink to="/executors" activeClassName="activeClass">
                    <MDBListGroupItem>
                        <MDBIcon icon="users" className="mr-3"/>
                        Исполнители
                    </MDBListGroupItem>
                </NavLink>
                
                <NavLink to="/signout" onClick={logOut} activeClassName="activeClass">
                    <MDBListGroupItem>
                        <MDBIcon icon="sign-out-alt" className="mr-3"/>
                        Выйти
                    </MDBListGroupItem>
                </NavLink>
            </MDBListGroup>
        </div>
    );
}

export default TopNavigation;