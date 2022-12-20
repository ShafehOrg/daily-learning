import React from 'react'
import { Provider } from 'react-redux'
import { HashRouter } from "react-router-dom";

const ProviderWrapper = ({ children, store }) => (
    <Provider store={store}>
        <HashRouter>
            {children}
        </HashRouter>
    </Provider>
)

export default ProviderWrapper
