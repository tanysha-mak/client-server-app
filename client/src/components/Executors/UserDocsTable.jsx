import React from 'react';
import { MDBCard,MDBIcon, MDBCardBody,MDBView, MDBTable, MDBTableBody, MDBTableHead, MDBRow, MDBCol } from 'mdbreact';

const UserDocsTable = ({docs}) => {
    console.log(docs)
  return (
    <MDBRow className="mb-4">
          <MDBCol md="12">
              <MDBCard>
              <MDBView className="gradient-card-header blue darken-2">
                <h4 className="h4-responsive text-white">Документы</h4>
            </MDBView>
                  <MDBCardBody>
                    <MDBTable hover >
                      <MDBTableHead color="blue-grey lighten-4">
                        <tr>
                          <th>№</th>
                          <th>Название</th>
                          <th>Назначен</th>
                          <th>Статус</th>
                          <th>Инициатор</th>
                          <th>Загрузить</th>
                        </tr>
                      </MDBTableHead>
                      <MDBTableBody>

                          {
                            docs.map((doc, idx)=>
                                <>
                                <tr>
                                    <td>{idx+1}</td>
                                    <td>{`"${doc.name}"`}</td>
                                    <td>{doc.created_at}</td>
                                    <td>{doc.status ? "Выполнен" : "На обработке"}</td>
                                    <td>{doc.departament}</td>
                                    <td>
                                        <a className="p-2" href={
                                            `http://localhost:3000${doc.file}`}>
                                            <MDBIcon icon="download" className="ml-1"/>
                                        </a></td>
                                </tr>
                                </>
                            )
                          }

                      </MDBTableBody>
                    </MDBTable>
                  </MDBCardBody>
              </MDBCard>
          </MDBCol>
          
      </MDBRow>
  )
}

export default UserDocsTable;

