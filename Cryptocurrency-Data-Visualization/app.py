import pandas_datareader as web
from pandas_datareader import data
from stocker.predict import tomorrow
import pandas as pd
import datetime as dt
import numpy as np
import plotly.graph_objects as go
import streamlit as st
import plotly.express as px


st.set_page_config(page_title='Crypto Dash PN', page_icon= 'coin', layout = "wide")


######################################################Data##############################################################


start = dt.datetime(2017,1,1)
end = dt.datetime.now()

asset_list = ['ADA-USD','ATOM-USD','AVAX-USD',"AXS-USD",'BTC-USD','ETH-USD','LINK-USD','LUNA1-USD','MATIC-USD','SOL-USD']

def load_data(asset):
    data = web.DataReader(asset,'yahoo', start, end)
    data.reset_index(inplace=True)
    data['year'] = pd.DatetimeIndex(data['Date']).year
    data['month'] = pd.DatetimeIndex(data['Date']).month
    data['day'] = pd.DatetimeIndex(data['Date']).day
    return data


ada = web.DataReader('ADA-USD', 'yahoo', start, end)
atom = web.DataReader('ATOM-USD', 'yahoo', start, end)
avax = web.DataReader('AVAX-USD', 'yahoo', start, end)
axs = web.DataReader('AXS-USD', 'yahoo', start, end)
btc = web.DataReader('BTC-USD', 'yahoo', start, end)
eth = web.DataReader('ETH-USD', 'yahoo', start, end)
link = web.DataReader('LINK-USD', 'yahoo', start, end)
luna1 = web.DataReader('LUNA1-USD', 'yahoo', start, end)
matic= web.DataReader('MATIC-USD', 'yahoo', start, end)
sol= web.DataReader('SOL-USD', 'yahoo', start, end)

ada.reset_index(inplace=True)
atom.reset_index(inplace=True)
avax.reset_index(inplace=True)
axs.reset_index(inplace=True)
btc.reset_index(inplace=True)
eth.reset_index(inplace=True)
link.reset_index(inplace=True)
luna1.reset_index(inplace=True)
matic.reset_index(inplace=True)
sol.reset_index(inplace=True)

#Extracting the year, month and day
ada['year'] = pd.DatetimeIndex(ada['Date']).year
ada['month'] = pd.DatetimeIndex(ada['Date']).month
ada['day'] = pd.DatetimeIndex(ada['Date']).day
atom['year'] = pd.DatetimeIndex(atom['Date']).year
atom['month'] = pd.DatetimeIndex(atom['Date']).month
atom['day'] = pd.DatetimeIndex(atom['Date']).day
avax['year'] = pd.DatetimeIndex(avax['Date']).year
avax['month'] = pd.DatetimeIndex(avax['Date']).month
avax['day'] = pd.DatetimeIndex(avax['Date']).day
axs['year'] = pd.DatetimeIndex(axs['Date']).year
axs['month'] = pd.DatetimeIndex(axs['Date']).month
axs['day'] = pd.DatetimeIndex(axs['Date']).day
btc['year'] = pd.DatetimeIndex(btc['Date']).year
btc['month'] = pd.DatetimeIndex(btc['Date']).month
btc['day'] = pd.DatetimeIndex(btc['Date']).day
eth['year'] = pd.DatetimeIndex(eth['Date']).year
eth['month'] = pd.DatetimeIndex(eth['Date']).month
eth['day'] = pd.DatetimeIndex(eth['Date']).day
link['year'] = pd.DatetimeIndex(link['Date']).year
link['month'] = pd.DatetimeIndex(link['Date']).month
link['day'] = pd.DatetimeIndex(link['Date']).day
luna1['year'] = pd.DatetimeIndex(luna1['Date']).year
luna1['month'] = pd.DatetimeIndex(luna1['Date']).month
luna1['day'] = pd.DatetimeIndex(luna1['Date']).day
matic['year'] = pd.DatetimeIndex(matic['Date']).year
matic['month'] = pd.DatetimeIndex(matic['Date']).month
matic['day'] = pd.DatetimeIndex(matic['Date']).day
sol['year'] = pd.DatetimeIndex(sol['Date']).year
sol['month'] = pd.DatetimeIndex(sol['Date']).month
sol['day'] = pd.DatetimeIndex(sol['Date']).day

ada["Asset"] = "Ada"
atom["Asset"] = "Atom"
avax["Asset"] = "Avax"
axs["Asset"] = "Axs"
btc["Asset"] = "Btc"
eth["Asset"] = "Eth"
link["Asset"] = "Link"
luna1["Asset"] = "Luna1"
matic["Asset"] = "Matic"
sol["Asset"] = "Sol"

df_total = pd.concat([ada, atom, avax, axs, btc, eth, link, luna1, matic, sol], ignore_index = True)

df_total['MovingAvg10'] = df_total['Close'].rolling(window = 70).mean()
df_total['MovingAvg20'] = df_total['Close'].rolling(window = 140).mean()
df_total['MovingAvg50'] = df_total['Close'].rolling(window = 350).mean()
df_total['MovingAvg100'] = df_total['Close'].rolling(window = 700).mean()
df_total['MovingAvg200'] = df_total['Close'].rolling(window = 1400).mean()

#Ranking
marketcap = data.get_quote_yahoo(asset_list)['marketCap']
marketcap = marketcap.to_frame()
ranking = pd.concat([ada[-1:], atom[-1:], avax[-1:], axs[-1:], btc[-1:], eth[-1:], link[-1:], luna1[-1:], matic[-1:], sol[-1:]], ignore_index = True)
ranking = ranking[['High', 'Low', 'Open', 'Close', 'Volume', 'Asset']]
ranking.index = ranking.pop('Asset')
ranking['MarketCap'] = marketcap['marketCap'].values


#Predictions
crypto_pred = []

ada_pred = tomorrow('ADA-USD')
atom_pred = tomorrow('ATOM-USD')
avax_pred = tomorrow('AVAX-USD')
axs_pred = tomorrow('AXS-USD')
btc_pred = tomorrow('BTC-USD')
eth_pred = tomorrow('ETH-USD')
link_pred = tomorrow('LINK-USD')
luna1_pred = tomorrow('LUNA1-USD')
matic_pred = tomorrow('MATIC-USD')
sol_pred = tomorrow('SOL-USD')

crypto_pred.append(ada_pred[0])
crypto_pred.append(atom_pred[0])
crypto_pred.append(avax_pred[0])
crypto_pred.append(axs_pred[0])
crypto_pred.append(btc_pred[0])
crypto_pred.append(eth_pred[0])
crypto_pred.append(link_pred[0])
crypto_pred.append(luna1_pred[0])
crypto_pred.append(matic_pred[0])
crypto_pred.append(sol_pred[0])

ranking['Close Prediction'] = crypto_pred

delta = pd.concat([ada[-2:-1], atom[-2:-1], avax[-2:-1], axs[-2:-1], btc[-2:-1], eth[-2:-1], link[-2:-1], luna1[-2:-1], matic[-2:-1], sol[-2:-1]], ignore_index = True)
delta = delta[['Close', 'Asset']]
delta['Close B'] = delta[['Close']]
delta.drop('Close', axis=1, inplace=True)
delta['Close A'] = ranking['Close'].values
delta['Prediction'] = ranking['Close Prediction'].values
delta['Delta 1'] = ((delta['Close A'] - delta['Close B']) / delta['Close B']) * 100
delta['Delta 2'] = ((delta['Prediction'] - delta['Close A']) / delta['Close A']) * 100
delta.index = delta.pop('Asset')
delta.loc[delta['Delta 2'] >= 0, 'Sugestion'] = 'Buy'
delta.loc[delta['Delta 2'] < 0, 'Sugestion'] = 'Sell'

ranking = ranking.sort_values(by = ['MarketCap'], ascending = False)

################################ APP #########################################



st.title("Crypto Dashboard")

page = st.sidebar.selectbox('Select page',
  ['Daily View','Analysis'])

if page == 'Analysis':



    ## each asset
    alist = df_total['Asset'].unique()
    blist = ['High', 'Low', 'Open', 'Close', 'Volume', 'Adj Close']
    clist = ['MovingAvg10', 'MovingAvg20', 'MovingAvg50', 'MovingAvg100', 'MovingAvg200']

    assets = st.sidebar.selectbox("Select a asset:", alist)
    values = st.sidebar.selectbox("Select a value:", blist)
    mavg = st.sidebar.selectbox("Select your indicator", clist)

    st.subheader("Individual Analysis (Choose an asset and a value)")

    st.dataframe(df_total[df_total["Asset"] == assets][['Date', values]])

    col1, col2 = st.columns(2)

    fig = go.Figure(data=[go.Candlestick(x=df_total[df_total["Asset"] == assets]['Date'],
                                         open=df_total[df_total["Asset"] == assets]['Open'],
                                         high=df_total[df_total["Asset"] == assets]['High'],
                                         low=df_total[df_total["Asset"] == assets]['Low'],
                                         close=df_total[df_total["Asset"] == assets]['Close'])])

    fig.add_trace(go.Scatter(x=df_total[df_total["Asset"] == assets]['Date'], y=df_total[df_total["Asset"] == assets][mavg], legendgroup=False, line=dict(color='#e0e0e0'), showlegend = False))


    fig.update_layout(
        title= "Evolution of all values (USD)",
        yaxis_title='USD Value',
        showlegend=False
    )

    col1.plotly_chart(fig, use_container_width=True)


    fig = px.line(df_total[df_total["Asset"] == assets], x="Date", y=values, title= "Evolution of each value (USD)")


    col2.plotly_chart(fig, use_container_width=True)



    st.subheader("Comparison of Assets (Select a value)")


    col3, col4 = st.columns(2)
    fig = px.line(df_total,
                  x="Date", y=values,
                  title="Global Analysis (USD)", color='Asset')

    col3.plotly_chart(fig)

    df_last30days = df_total[df_total["Date"] > dt.datetime.now() - pd.to_timedelta("30day")]

    fig = px.line(df_last30days,
                  x="Date", y=values,
                  title="Last 30 days historic (USD)", color='Asset')

    col4.plotly_chart(fig, use_container_width=True)



else:
    # Descrição do dash

    st.write("This dashboard is divided in two pages.The first page offers an overall analysis and the prediction for the following day and the second page has detailed info about each asset and also comparison between assets.")





    st.subheader('Daily Values')

    col1, col2, col3 = st.columns(3)
    ## Last day values
    alist = df_total['Asset'].unique()
    assets = st.sidebar.selectbox("Select a asset:", alist)

    col1.metric('Latest Closing Price', value = ranking['Close'][assets], delta = delta['Delta 1'][assets])
    col2.metric('Prediction Price for the next day', ranking['Close Prediction'][assets], delta = delta['Delta 2'][assets])
    col3.metric('Suggestion', delta['Sugestion'][assets])




    st.subheader('Coin Ranking')

    st.dataframe(ranking[['MarketCap', 'Open', 'High', 'Low', 'Volume']])







## streamlit run "C:\Users\simao\Desktop\NOVA IMS\2nd Semester\Business Cases\BC5_dashboarding\app.py"