import React, {useState, useEffect, useContext} from 'react'
import { MDBCard, MDBCol, MDBRow, MDBView, MDBMask, MDBCardImage, MDBCardBody, MDBCardTitle, MDBCardText, MDBCardFooter, MDBBtn, MDBIcon } from 'mdbreact';


const UserCard = ({user}) => {

    return (
        <>
       <MDBCol sm="12" md="6" lg="3" className="mb-5">
                        <MDBCard>
                    <MDBCardImage className="img-fluid" style={{display: 'block', margin: 'auto'}} src={
                            `http://localhost:3000${user.avatar}`} />
                     <MDBCardBody>
                   
                        
                        <MDBCardTitle className="text-center mb-2 font-bold">{`${user.second_name} ${user.first_name}`}</MDBCardTitle>
                            <MDBCardTitle sub className="text-center indigo-text mb-2 font-bold">{user.position}</MDBCardTitle>
                            <hr />
                            <MDBCardText>
                                <strong className="mb-2">Email:</strong> {user.email}
                                <br />
                                <strong className="mb-2">Моб. номер:</strong> {user.phone_number}
                            
                            </MDBCardText>
                </MDBCardBody>
                <MDBCardFooter className="links-light profile-card-footer  text-center">
                            <strong className="mb-2">Опыт работы:</strong> {user.working_time} <strong className="mb-2">года</strong> 
                            </MDBCardFooter>
                </MDBCard>
                </MDBCol>
        </>
    )
}

export default UserCard

