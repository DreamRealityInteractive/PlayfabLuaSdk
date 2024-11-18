-- PlayFab Economy API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabEconomyApi = require("PlayFab.PlayFabEconomyApi")
-- PlayFabEconomyApi.<EconomyApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabEconomyApi = {
    settings = PlayFabSettings.settings
}

-- Add inventory items. Up to 10,000 stacks of items can be added to a single inventory collection. Stack size is uncapped.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/addinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/addinventoryitems#addinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/addinventoryitems#addinventoryitemsresponse
function PlayFabEconomyApi.AddInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/AddInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a new item in the working catalog using provided metadata.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createdraftitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createdraftitem#createdraftitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createdraftitem#createdraftitemresponse
function PlayFabEconomyApi.CreateDraftItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/CreateDraftItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates one or more upload URLs which can be used by the client to upload raw file data. Content URls and uploaded
-- content will be garbage collected after 24 hours if not attached to a draft or published item. Detailed pricing info
-- around uploading content can be found here:
-- https://learn.microsoft.com/en-us/gaming/playfab/features/pricing/meters/catalog-meters
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createuploadurls
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createuploadurls#createuploadurlsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createuploadurls#createuploadurlsresponse
function PlayFabEconomyApi.CreateUploadUrls(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/CreateUploadUrls", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes all reviews, helpfulness votes, and ratings submitted by the entity specified.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteentityitemreviews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteentityitemreviews#deleteentityitemreviewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteentityitemreviews#deleteentityitemreviewsresponse
function PlayFabEconomyApi.DeleteEntityItemReviews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/DeleteEntityItemReviews", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Delete an Inventory Collection. More information about Inventory Collections can be found here:
-- https://learn.microsoft.com/en-us/gaming/playfab/features/economy-v2/inventory/collections
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/deleteinventorycollection
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/deleteinventorycollection#deleteinventorycollectionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/deleteinventorycollection#deleteinventorycollectionresponse
function PlayFabEconomyApi.DeleteInventoryCollection(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/DeleteInventoryCollection", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Delete inventory items
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/deleteinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/deleteinventoryitems#deleteinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/deleteinventoryitems#deleteinventoryitemsresponse
function PlayFabEconomyApi.DeleteInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/DeleteInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes an item from working catalog and all published versions from the public catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteitem#deleteitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteitem#deleteitemresponse
function PlayFabEconomyApi.DeleteItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/DeleteItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Execute a list of Inventory Operations. A maximum list of 50 operations can be performed by a single request. There is
-- also a limit to 300 items that can be modified/added in a single request. For example, adding a bundle with 50 items
-- counts as 50 items modified. All operations must be done within a single inventory collection. This API has a reduced
-- RPS compared to an individual inventory operation with Player Entities limited to 60 requests in 90 seconds.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/executeinventoryoperations
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/executeinventoryoperations#executeinventoryoperationsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/executeinventoryoperations#executeinventoryoperationsresponse
function PlayFabEconomyApi.ExecuteInventoryOperations(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/ExecuteInventoryOperations", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Transfer a list of inventory items. A maximum list of 50 operations can be performed by a single request. When the
-- response code is 202, one or more operations did not complete within the timeframe of the request. You can identify the
-- pending operations by looking for OperationStatus = 'InProgress'. You can check on the operation status at anytime
-- within 1 day of the request by passing the TransactionToken to the GetInventoryOperationStatus API.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/executetransferoperations
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/executetransferoperations#executetransferoperationsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/executetransferoperations#executetransferoperationsresponse
function PlayFabEconomyApi.ExecuteTransferOperations(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/ExecuteTransferOperations", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the configuration for the catalog. Only Title Entities can call this API. There is a limit of 100 requests in 10
-- seconds for this API. More information about the Catalog Config can be found here:
-- https://learn.microsoft.com/en-us/gaming/playfab/features/economy-v2/settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getcatalogconfig
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getcatalogconfig#getcatalogconfigrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getcatalogconfig#getcatalogconfigresponse
function PlayFabEconomyApi.GetCatalogConfig(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetCatalogConfig", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves an item from the working catalog. This item represents the current working state of the item. GetDraftItem
-- does not work off a cache of the Catalog and should be used when trying to get recent item updates. However, please note
-- that item references data is cached and may take a few moments for changes to propagate.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitem#getdraftitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitem#getdraftitemresponse
function PlayFabEconomyApi.GetDraftItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetDraftItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves a paginated list of the items from the draft catalog. Up to 50 IDs can be retrieved in a single request.
-- GetDraftItems does not work off a cache of the Catalog and should be used when trying to get recent item updates.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitems#getdraftitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitems#getdraftitemsresponse
function PlayFabEconomyApi.GetDraftItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetDraftItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves a paginated list of the items from the draft catalog created by the Entity. Up to 50 items can be returned at
-- once. You can use continuation tokens to paginate through results that return greater than the limit.
-- GetEntityDraftItems does not work off a cache of the Catalog and should be used when trying to get recent item updates.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentitydraftitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentitydraftitems#getentitydraftitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentitydraftitems#getentitydraftitemsresponse
function PlayFabEconomyApi.GetEntityDraftItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetEntityDraftItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the submitted review for the specified item by the authenticated entity. Individual ratings and reviews data update
-- in near real time with delays within a few seconds.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentityitemreview
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentityitemreview#getentityitemreviewrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentityitemreview#getentityitemreviewresponse
function PlayFabEconomyApi.GetEntityItemReview(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetEntityItemReview", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get Inventory Collection Ids. Up to 50 Ids can be returned at once (or 250 with response compression enabled). You can
-- use continuation tokens to paginate through results that return greater than the limit. It can take a few seconds for
-- new collection Ids to show up.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getinventorycollectionids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getinventorycollectionids#getinventorycollectionidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getinventorycollectionids#getinventorycollectionidsresponse
function PlayFabEconomyApi.GetInventoryCollectionIds(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/GetInventoryCollectionIds", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get current inventory items.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getinventoryitems#getinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getinventoryitems#getinventoryitemsresponse
function PlayFabEconomyApi.GetInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/GetInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get the status of an inventory operation using an OperationToken. You can check on the operation status at anytime
-- within 1 day of the request by passing the TransactionToken to the this API.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getinventoryoperationstatus
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getinventoryoperationstatus#getinventoryoperationstatusrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getinventoryoperationstatus#getinventoryoperationstatusresponse
function PlayFabEconomyApi.GetInventoryOperationStatus(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/GetInventoryOperationStatus", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves an item from the public catalog. GetItem does not work off a cache of the Catalog and should be used when
-- trying to get recent item updates. However, please note that item references data is cached and may take a few moments
-- for changes to propagate.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitem#getitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitem#getitemresponse
function PlayFabEconomyApi.GetItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Search for a given item and return a set of bundles and stores containing the item. Up to 50 items can be returned at
-- once. You can use continuation tokens to paginate through results that return greater than the limit. This API is
-- intended for tooling/automation scenarios and has a reduced RPS with Player Entities limited to 30 requests in 300
-- seconds and Title Entities limited to 100 requests in 10 seconds.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemcontainers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemcontainers#getitemcontainersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemcontainers#getitemcontainersresponse
function PlayFabEconomyApi.GetItemContainers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItemContainers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the moderation state for an item, including the concern category and string reason. More information about
-- moderation states can be found here: https://learn.microsoft.com/en-us/gaming/playfab/features/economy-v2/ugc/moderation
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemmoderationstate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemmoderationstate#getitemmoderationstaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemmoderationstate#getitemmoderationstateresponse
function PlayFabEconomyApi.GetItemModerationState(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItemModerationState", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the status of a publish of an item.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitempublishstatus
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitempublishstatus#getitempublishstatusrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitempublishstatus#getitempublishstatusresponse
function PlayFabEconomyApi.GetItemPublishStatus(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItemPublishStatus", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a paginated set of reviews associated with the specified item. Individual ratings and reviews data update in near
-- real time with delays within a few seconds.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviews#getitemreviewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviews#getitemreviewsresponse
function PlayFabEconomyApi.GetItemReviews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItemReviews", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a summary of all ratings and reviews associated with the specified item. Summary ratings data is cached with update
-- data coming within 15 minutes.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviewsummary
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviewsummary#getitemreviewsummaryrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviewsummary#getitemreviewsummaryresponse
function PlayFabEconomyApi.GetItemReviewSummary(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItemReviewSummary", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves items from the public catalog. Up to 50 items can be returned at once. GetItems does not work off a cache of
-- the Catalog and should be used when trying to get recent item updates. However, please note that item references data is
-- cached and may take a few moments for changes to propagate.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitems#getitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitems#getitemsresponse
function PlayFabEconomyApi.GetItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the access tokens.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getmicrosoftstoreaccesstokens
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getmicrosoftstoreaccesstokens#getmicrosoftstoreaccesstokensrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/getmicrosoftstoreaccesstokens#getmicrosoftstoreaccesstokensresponse
function PlayFabEconomyApi.GetMicrosoftStoreAccessTokens(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/GetMicrosoftStoreAccessTokens", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get transaction history for a player. Up to 250 Events can be returned at once. You can use continuation tokens to
-- paginate through results that return greater than the limit. Getting transaction history has a lower RPS limit than
-- getting a Player's inventory with Player Entities having a limit of 30 requests in 300 seconds.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/gettransactionhistory
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/gettransactionhistory#gettransactionhistoryrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/gettransactionhistory#gettransactionhistoryresponse
function PlayFabEconomyApi.GetTransactionHistory(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/GetTransactionHistory", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Initiates a publish of an item from the working catalog to the public catalog. You can use the GetItemPublishStatus API
-- to track the state of the item publish.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/publishdraftitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/publishdraftitem#publishdraftitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/publishdraftitem#publishdraftitemresponse
function PlayFabEconomyApi.PublishDraftItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/PublishDraftItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Purchase an item or bundle. Up to 10,000 stacks of items can be added to a single inventory collection. Stack size is
-- uncapped.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/purchaseinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/purchaseinventoryitems#purchaseinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/purchaseinventoryitems#purchaseinventoryitemsresponse
function PlayFabEconomyApi.PurchaseInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/PurchaseInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Redeem items.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemappleappstoreinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemappleappstoreinventoryitems#redeemappleappstoreinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemappleappstoreinventoryitems#redeemappleappstoreinventoryitemsresponse
function PlayFabEconomyApi.RedeemAppleAppStoreInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/RedeemAppleAppStoreInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Redeem items.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemgoogleplayinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemgoogleplayinventoryitems#redeemgoogleplayinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemgoogleplayinventoryitems#redeemgoogleplayinventoryitemsresponse
function PlayFabEconomyApi.RedeemGooglePlayInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/RedeemGooglePlayInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Redeem items.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemmicrosoftstoreinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemmicrosoftstoreinventoryitems#redeemmicrosoftstoreinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemmicrosoftstoreinventoryitems#redeemmicrosoftstoreinventoryitemsresponse
function PlayFabEconomyApi.RedeemMicrosoftStoreInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/RedeemMicrosoftStoreInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Redeem items.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemnintendoeshopinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemnintendoeshopinventoryitems#redeemnintendoeshopinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemnintendoeshopinventoryitems#redeemnintendoeshopinventoryitemsresponse
function PlayFabEconomyApi.RedeemNintendoEShopInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/RedeemNintendoEShopInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Redeem items.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemplaystationstoreinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemplaystationstoreinventoryitems#redeemplaystationstoreinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemplaystationstoreinventoryitems#redeemplaystationstoreinventoryitemsresponse
function PlayFabEconomyApi.RedeemPlayStationStoreInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/RedeemPlayStationStoreInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Redeem items.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemsteaminventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemsteaminventoryitems#redeemsteaminventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/redeemsteaminventoryitems#redeemsteaminventoryitemsresponse
function PlayFabEconomyApi.RedeemSteamInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/RedeemSteamInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Submit a report for an item, indicating in what way the item is inappropriate.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitem#reportitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitem#reportitemresponse
function PlayFabEconomyApi.ReportItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/ReportItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Submit a report for a review
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitemreview
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitemreview#reportitemreviewrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitemreview#reportitemreviewresponse
function PlayFabEconomyApi.ReportItemReview(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/ReportItemReview", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates or updates a review for the specified item. More information around the caching surrounding item ratings and
-- reviews can be found here:
-- https://learn.microsoft.com/en-us/gaming/playfab/features/economy-v2/catalog/ratings#ratings-design-and-caching
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reviewitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reviewitem#reviewitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reviewitem#reviewitemresponse
function PlayFabEconomyApi.ReviewItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/ReviewItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Executes a search against the public catalog using the provided search parameters and returns a set of paginated
-- results. SearchItems uses a cache of the catalog with item updates taking up to a few minutes to propagate. You should
-- use the GetItem API for when trying to immediately get recent item updates. More information about the Search API can be
-- found here: https://learn.microsoft.com/en-us/gaming/playfab/features/economy-v2/catalog/search
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/searchitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/searchitems#searchitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/searchitems#searchitemsresponse
function PlayFabEconomyApi.SearchItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/SearchItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the moderation state for an item, including the concern category and string reason. More information about
-- moderation states can be found here: https://learn.microsoft.com/en-us/gaming/playfab/features/economy-v2/ugc/moderation
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/setitemmoderationstate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/setitemmoderationstate#setitemmoderationstaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/setitemmoderationstate#setitemmoderationstateresponse
function PlayFabEconomyApi.SetItemModerationState(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/SetItemModerationState", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Submit a vote for a review, indicating whether the review was helpful or unhelpful.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/submititemreviewvote
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/submititemreviewvote#submititemreviewvoterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/submititemreviewvote#submititemreviewvoteresponse
function PlayFabEconomyApi.SubmitItemReviewVote(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/SubmitItemReviewVote", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Subtract inventory items.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/subtractinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/subtractinventoryitems#subtractinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/subtractinventoryitems#subtractinventoryitemsresponse
function PlayFabEconomyApi.SubtractInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/SubtractInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Submit a request to takedown one or more reviews.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/takedownitemreviews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/takedownitemreviews#takedownitemreviewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/takedownitemreviews#takedownitemreviewsresponse
function PlayFabEconomyApi.TakedownItemReviews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/TakedownItemReviews", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Transfer inventory items. When transferring across collections, a 202 response indicates that the transfer did not
-- complete within the timeframe of the request. You can identify the pending operations by looking for OperationStatus =
-- 'InProgress'. You can check on the operation status at anytime within 1 day of the request by passing the
-- TransactionToken to the GetInventoryOperationStatus API. More information about item transfer scenarios can be found
-- here:
-- https://learn.microsoft.com/en-us/gaming/playfab/features/economy-v2/inventory/?tabs=inventory-game-manager#transfer-inventory-items
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/transferinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/transferinventoryitems#transferinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/transferinventoryitems#transferinventoryitemsresponse
function PlayFabEconomyApi.TransferInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/TransferInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates the configuration for the catalog. Only Title Entities can call this API. There is a limit of 10 requests in 10
-- seconds for this API. More information about the Catalog Config can be found here:
-- https://learn.microsoft.com/en-us/gaming/playfab/features/economy-v2/settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatecatalogconfig
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatecatalogconfig#updatecatalogconfigrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatecatalogconfig#updatecatalogconfigresponse
function PlayFabEconomyApi.UpdateCatalogConfig(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/UpdateCatalogConfig", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Update the metadata for an item in the working catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatedraftitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatedraftitem#updatedraftitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatedraftitem#updatedraftitemresponse
function PlayFabEconomyApi.UpdateDraftItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/UpdateDraftItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Update inventory items
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/updateinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/updateinventoryitems#updateinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/inventory/inventory/updateinventoryitems#updateinventoryitemsresponse
function PlayFabEconomyApi.UpdateInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Inventory/UpdateInventoryItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabEconomyApi
