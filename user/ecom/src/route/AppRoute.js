import React, { Component, Fragment } from 'react'
import { Router, Route, Switch } from "react-router-dom";
import HomePage from '../pages/HomePage';
import UserLoginPage from '../pages/UserLoginPage';
import ContactPage from '../pages/ContactPage';
import PrivacyPage from '../pages/PrivacyPage';
import ProductDetailsPage from '../pages/ProductDetailsPage';
import PurchasePage from '../pages/PurchasePage';
import RefundPage from '../pages/RefundPage';

class AppRoute extends Component {
    render() {
        return (
            <Fragment>
            <Switch>
                 <Route exact path="/" component={HomePage} />
                 <Route exact path="/login" component={UserLoginPage} />
                 <Route exact path="/contact" component={ContactPage} />
                 <Route exact path="/purchase" component={PurchasePage} />
                 <Route exact path="/privacy" component={PrivacyPage} />
                 <Route exact path="/refund" component={RefundPage} />
                 <Route exact path="/productdetails" component={ProductDetailsPage} />
            </Switch>
            </Fragment>
        )
    }
}

export default AppRoute