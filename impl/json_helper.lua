package.path = "../?.lua;" .. package.path

local json = require("utils.json")

local module = {}

local result_encoders = {}

-- AddColumn
result_encoders["AddColumn"] = function (proc_result)
  return {result = proc_result}
end

-- AddLabel
result_encoders["AddLabel"] = function (proc_result)
  return {label_id = proc_result}
end

-- AllocTable
result_encoders["AllocTable"] = function (proc_result)
  return {t_id = proc_result}
end

-- Clear
result_encoders["Clear"] = function (proc_result)
  return {result = proc_result}
end

-- CreateWindow
result_encoders["CreateWindow"] = function (proc_result)
  return {result = proc_result}
end

-- DelAllLabels
result_encoders["DelAllLabels"] = function (proc_result)
  return {result = proc_result}
end

-- DeleteRow
result_encoders["DeleteRow"] = function (proc_result)
  return {result = proc_result}
end

-- DestroyTable
result_encoders["DestroyTable"] = function (proc_result)
  return {result = proc_result}
end

-- getBuySellInfo
result_encoders["getBuySellInfo"] = function (proc_result)
  return {buy_sell_info = proc_result}
end

-- getBuySellInfoEx
result_encoders["getBuySellInfoEx"] = function (proc_result)
  return {buy_sell_info_ex = proc_result}
end

-- getCandlesByIndex
result_encoders["getCandlesByIndex"] = function (proc_result)
  return proc_result
end

-- GetCell
result_encoders["GetCell"] = function (proc_result)
  return proc_result and proc_result or {}
end

-- getClassesList
result_encoders["getClassesList"] = function (proc_result)
  return {classes_list = proc_result}
end

-- getClassInfo
result_encoders["getClassInfo"] = function (proc_result)
  return {class_info = proc_result}
end

-- getClassSecurities
result_encoders["getClassSecurities"] = function (proc_result)
  return {class_securities = proc_result}
end

-- getDepo
result_encoders["getDepo"] = function (proc_result)
  return {depo = proc_result}
end

-- getDepoEx
result_encoders["getDepoEx"] = function (proc_result)
  return {depo_ex = proc_result}
end

-- getFuturesHolding
result_encoders["getFuturesHolding"] = function (proc_result)
  return {futures_holding = proc_result}
end

-- getFuturesLimit
result_encoders["getFuturesLimit"] = function (proc_result)
  return {futures_limit = proc_result}
end

-- getInfoParam
result_encoders["getInfoParam"] = function (proc_result)
  return {info_param = proc_result}
end

-- getItem
result_encoders["getItem"] = function (proc_result)
  return {table_row = proc_result}
end

-- GetLabelParams
result_encoders["GetLabelParams"] = function (proc_result)
  return {label_params = proc_result}
end

-- getLinesCount
result_encoders["getLinesCount"] = function (proc_result)
  return {lines_count = proc_result}
end

-- getMoney
result_encoders["getMoney"] = function (proc_result)
  return {money = proc_result}
end

-- getMoneyEx
result_encoders["getMoneyEx"] = function (proc_result)
  return {money_ex = proc_result}
end

-- getNumberOf
result_encoders["getNumberOf"] = function (proc_result)
  return {result = proc_result}
end

-- getNumCandles
result_encoders["getNumCandles"] = function (proc_result)
  return {num_candles = proc_result}
end

-- getOrderByNumber
result_encoders["getOrderByNumber"] = function (proc_result)
  return proc_result and proc_result or {}
end

-- getParamEx
result_encoders["getParamEx"] = function (proc_result)
  return {param_ex = proc_result}
end

-- getParamEx2
result_encoders["getParamEx2"] = function (proc_result)
  return {param_ex = proc_result}
end

-- getPortfolioInfo
result_encoders["getPortfolioInfo"] = function (proc_result)
  return {portfolio_info = proc_result}
end

-- getPortfolioInfoEx
result_encoders["getPortfolioInfoEx"] = function (proc_result)
  
  for k, v in pairs(proc_result.ex) do
    proc_result[k] = v
  end
  proc_result.ex = nil
  
  return proc_result
end

-- getQuoteLevel2
result_encoders["getQuoteLevel2"] = function (proc_result)
  return proc_result
end

-- getScriptPath
result_encoders["getScriptPath"] = function (proc_result)
  return {script_path = proc_result}
end

-- getSecurityInfo
result_encoders["getSecurityInfo"] = function (proc_result)
  return proc_result and {security_info = proc_result} or {}
end

-- GetTableSize
result_encoders["GetTableSize"] = function (proc_result)
  return proc_result and {table_size = proc_result} or {}
end

-- getTradeDate
result_encoders["getTradeDate"] = function (proc_result)
  return {trade_date = proc_result}
end

-- GetWindowCaption
result_encoders["GetWindowCaption"] = function (proc_result)
  return proc_result and {caption = proc_result} or {}
end

-- GetWindowRect
result_encoders["GetWindowRect"] = function (proc_result)
  return proc_result and {window_rect = proc_result} or {}
end

-- getWorkingFolder
result_encoders["getWorkingFolder"] = function (proc_result)
  return {working_folder = proc_result}
end

-- Highlight
result_encoders["Highlight"] = function (proc_result)
  return {result = proc_result}
end

-- InsertRow
result_encoders["InsertRow"] = function (proc_result)
  return {result = proc_result}
end

-- isConnected
result_encoders["isConnected"] = function (proc_result)
  return {is_connected = proc_result}
end

-- IsSubscribed_Level_II_Quotes
result_encoders["IsSubscribed_Level_II_Quotes"] = function (proc_result)
  return {result = proc_result}
end

-- IsWindowClosed
result_encoders["IsWindowClosed"] = function (proc_result)
  return proc_result and {result = proc_result} or {}
end

-- message
result_encoders["message"] = function (proc_result)
  return proc_result and {result = proc_result} or {}
end

-- ParamRequest
result_encoders["ParamRequest"] = function (proc_result)
  return {result = proc_result}
end

-- PrintDbgStr
result_encoders["PrintDbgStr"] = function ()
  return nil
end

-- RGB
result_encoders["PrintDbgStr"] = function (proc_result)
  return {result = proc_result}
end

-- SearchItems
result_encoders["SearchItems"] = function (proc_result)
  return {items_indices = proc_result}
end

-- sendTransaction
result_encoders["sendTransaction"] = function (proc_result)
  return {result = proc_result}
end

-- SetCell
result_encoders["SetCell"] = function (proc_result)
  return {result = proc_result}
end

-- SetColor
result_encoders["SetColor"] = function (proc_result)
  return {result = proc_result}
end

-- SetLabelParams
result_encoders["SetLabelParams"] = function (proc_result)
  return {result = proc_result}
end

-- SetSelectedRow
result_encoders["SetSelectedRow"] = function (proc_result)
  return {result = proc_result}
end

-- SetTableNotificationCallback
result_encoders["SetTableNotificationCallback"] = function (proc_result)
  return {result = proc_result}
end

-- SetWindowCaption
result_encoders["SetWindowCaption"] = function (proc_result)
  return {result = proc_result}
end

-- SetWindowPos
result_encoders["SetWindowPos"] = function (proc_result)
  return {result = proc_result}
end

-----

-- sleep
result_encoders["sleep"] = function (proc_result)
  return proc_result and {result = proc_result} or {}
end


-- FIXME: add the rest of the encoders

-----

function module.decode_request (encoded_request)
  
  local decoded_request = json.decode(encoded_request)
  return assert(decoded_request.method, "В теле JSON-запроса отсутствует аргумент 'method'."), decoded_request.args
end

function module.encode_response (response)
  
  local json_response = {}
  
  local err = response.error
  if err then
    json_response.error = {code = err.code, message = err.message}
  else
    json_response.result = assert(result_encoders[response.method], string.format("Для JSON-метода '%s' не найден JSON-сериализатор результата.", response.method))(response.proc_result)
  end
  
  return json.encode(json_response)
end

return module