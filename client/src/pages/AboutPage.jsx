import React from 'react';
import {MDBJumbotron, MDBBtn, MDBCol, MDBRow, MDBContainer, MDBAnimation
  } from "mdbreact";
import {BrowserRouter as Router,Link} from 'react-router-dom'


class AboutPage extends React.Component {

    render() {
        return (
            <div className="white-text" >
                     <MDBAnimation
                  type="fadeInLeft"
                  delay=".1s"
                  className="white-text text-center text-md-left col-md-12 mt-xl-5 mb-5"
                >
                            <MDBContainer className="mt-5 text-center">
            <MDBRow>
                <MDBCol>
                <MDBJumbotron style={{opacity: "0.5", backgroundColor: "black"}} >
                    <h2 className="h1 display-3">DOCFLOW</h2>
                    <p className="lead">
                    Веб-сайт предоставляет возможность создания системы учета документации и контроля
                    исполнительной дисциплины зарегистрированных работников компаний. В системе возможны
                    функции регистрации пользователей, добавления и назначения документа на исполнение
                    работнику. Также реализованы статистические отчеты для проведения контроля исполнительной
                    дисциплины, графические данные для анализа трудовых качеств работников. 
                    </p>
                    <hr className="my-2" />
                    <p>
                    Использование системы автоматизированного учёта документации возможно только для авторизованных пользователей.
                    Для продолжения войдите в систему
                    </p>
                    <p className="lead">
                   
                    </p>
                </MDBJumbotron>
               
                 
                    <Link  to="/sign_in"> <MDBBtn outline color="white" >
                        Войти
                    </MDBBtn></Link>
                    
                    
                
                </MDBCol>
            </MDBRow>
            </MDBContainer>
            </MDBAnimation>
            </div>
        )
    }

}

export default AboutPage;