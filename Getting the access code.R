library(httr)
browseURL("https://www.canva.com/api/oauth/authorize?code_challenge_method=s256&response_type=code&client_id=OC-AZL89v-B4Rxg&scope=app:read%20app:write%20design:content:read%20design:meta:read%20design:content:write%20design:permission:read%20design:permission:write%20folder:read%20folder:write%20folder:permission:read%20folder:permission:write%20asset:read%20asset:write%20comment:read%20comment:write%20brandtemplate:meta:read%20brandtemplate:content:read%20profile:read&code_challenge=m2_F7ndm2WhkD3wC8wSwcxa7uh_DSQZLcqMnStni5K4")

#Try to automate this part (Getting the 'code' from the link)

headers = c(
  'Content-Type' = 'application/x-www-form-urlencoded'
)

# Define the body of the request with required parameters
body <- list(
  'grant_type' = 'authorization_code',
  'client_id' = 'OC-AZL89v-B4Rxg',
  'client_secret' = 'cnvcaaL5nJDZHfh_KUN4CMCydsGUo9Xk9mFi5X9LgYtoyR_w63a15990',
  'code' = 'eyJraWQiOiJlODZiMTIwMy1iMWY1LTQ4N2MtYjBiOS0yN2U0MmI2ZjMzZDkiLCJhbGciOiJSUzI1NiJ9.eyJqdGkiOiJOd3I3eDVMOUxPdm9FUnYyWjlDNnd3IiwiY2xpZW50X2lkIjoiT0MtQVpMODl2LUI0UnhnIiwiYXVkIjoiaHR0cHM6Ly93d3cuY2FudmEuY29tIiwiaWF0IjoxNzMyNzQ3MjE5LCJuYmYiOjE3MzI3NDcyMTksImV4cCI6MTczMjc0NzgxOSwiYnVuZGxlcyI6WyJBRkZJIiwiUEFJRCJdLCJ0aWVyIjoicGFpZCIsInJvbGVzIjoiNHFLYmsxZm5NaERDeXM0eE9yMzc4MjhnNldlUGRnMkg0QWtoQjEwZFVIR0R2SmNlc29pcG9nZVZSV3dlbVNZVDBSY3NUQSIsImxvY2FsZSI6Imsxb2ttOTNTVG14dHM4ZmZGSkJSdldfdmRmLWJLNS01azNpYlJxeWd2aWVhRHVGaXV0SWJDTEdXeXY3V2FuNHZ1cUw2UEEiLCJzY29wZXMiOlsiYXBwOnJlYWQiLCJhcHA6d3JpdGUiLCJkZXNpZ246Y29udGVudDpyZWFkIiwiZGVzaWduOm1ldGE6cmVhZCIsImRlc2lnbjpjb250ZW50OndyaXRlIiwiZGVzaWduOnBlcm1pc3Npb246cmVhZCIsImRlc2lnbjpwZXJtaXNzaW9uOndyaXRlIiwiZm9sZGVyOnJlYWQiLCJmb2xkZXI6d3JpdGUiLCJmb2xkZXI6cGVybWlzc2lvbjpyZWFkIiwiZm9sZGVyOnBlcm1pc3Npb246d3JpdGUiLCJhc3NldDpyZWFkIiwiYXNzZXQ6d3JpdGUiLCJjb21tZW50OnJlYWQiLCJjb21tZW50OndyaXRlIiwiYnJhbmR0ZW1wbGF0ZTptZXRhOnJlYWQiLCJicmFuZHRlbXBsYXRlOmNvbnRlbnQ6cmVhZCIsInByb2ZpbGU6cmVhZCJdLCJzdWIiOiJvVVZ3bnFUTjRETmtkMGgyQkNUZDZFIiwiYnJhbmQiOiJvQlZ3bjJZazZneGFYSl9jdHh5QWg0Iiwib3JnYW5pemF0aW9uIjpudWxsLCJwa2NlIjoiRG9PXzRRSmRrSXpGU1FweWl1RG9UVzc1Y2o1OUFRUFFuQ1pmb2RPaVJhZUlEaEVlWDU5Y1RfTWV4ZTJWQW1lVjZFazk4Q0I0N1Q1ZWRJZmdhMWVWMDFwU0JSZlZBMTZ0VHdEc2sta2p2RTYyRFFuRSJ9.F2PJ8Q8hk6UqODjJRTMrprAUHZuBlEftq0lVE8hcgpo1ipn1BwxPC6b2bpulJvYcXbutIkVwyIL5xrlP-TJWg30Bu57KV4g5K4S2k5XzaHvQVR0RHYByGX2d7OZIj-zKfCP6wHLpw8khZjLn94_ETX5F-9SP8Ra_4_E6jA9iqtuYGk9XUGS4Nz-R_bXIJHMeQFvZaJxJ8qD_D2lXIp2ekr2krGcn2tAkM_3FxZD7e6PfRK0vADd8BYhvF3OlYsvHkNa_eGN8e2zVgj-mtbPamZxrKxcrrEpxCOt9ncsXWQ-3r28hyxKarv0mc9qeyqOS4C2TcY51PfMzZNUK7Evwkg',
  'code_verifier' = 'QrJLTd8ZYyXEfnl_q7-OjSP3WYzMGKpt-x_uNDAtvjmAYF7qzGQ3YMH9KNXz7T~gyPjV0sbQkTnWDbQD7mt3Jg'
)

res <- VERB("POST", url = "https://api.canva.com/rest/v1/oauth/token", body = body, add_headers(headers), encode = 'form')

cat(content(res, 'text')) 
# {"access_token":"eyJraWQiOiIyMzY4ZjRhYi00N2ZiLTQwN2MtYjM5Ni00NzgxODcwMjZkN2UiLCJhbGciOiJSUzI1NiJ9.eyJqdGkiOiJKZVNtMFFpZGhnVmNuMFNDeVlXdUtRIiwiY2xpZW50X2lkIjoiT0MtQVpMODl2LUI0UnhnIiwiYXVkIjoiaHR0cHM6Ly93d3cuY2FudmEuY29tIiwiaWF0IjoxNzMyNzQ0NDU0LCJuYmYiOjE3MzI3NDQ0NTQsImV4cCI6MTczMjc1ODg1NCwiYnVuZGxlcyI6WyJBRkZJIiwiUEFJRCJdLCJ0aWVyIjoicGFpZCIsInJvbGVzIjoiMjlEOWxfWmZ6WjFEeXVzclgzU3ZGQVNDa19pZzRaaGdDcVZEQ2QzWHdOcjh3WVBCcDRsX0RJQVlreU9WRUhNblh1a1J2USIsImxvY2FsZSI6IkRfeXJxWDhhUXZXXzV0RmJiM3ZQNG9CUGRZYnVMNlRodGZwMzc4Z3IzMGEtZ3Z3QnNkTDQxTmhUMC1udXBEX01OWDJ5T3ciLCJzY29wZXMiOlsiYXBwOnJlYWQiLCJhcHA6d3JpdGUiLCJkZXNpZ246Y29udGVudDpyZWFkIiwiZGVzaWduOm1ldGE6cmVhZCIsImRlc2lnbjpjb250ZW50OndyaXRlIiwiZGVzaWduOnBlcm1pc3Npb246cmVhZCIsImRlc2lnbjpwZXJtaXNzaW9uOndyaXRlIiwiZm9sZGVyOnJlYWQiLCJmb2xkZXI6d3JpdGUiLCJmb2xkZXI6cGVybWlzc2lvbjpyZWFkIiwiZm9sZGVyOnBlcm1pc3Npb246d3JpdGUiLCJhc3NldDpyZWFkIiwiYXNzZXQ6d3JpdGUiLCJjb21tZW50OnJlYWQiLCJjb21tZW50OndyaXRlIiwiYnJhbmR0ZW1wbGF0ZTptZXRhOnJlYWQiLCJicmFuZHRlbXBsYXRlOmNvbnRlbnQ6cmVhZCIsInByb2ZpbGU6cmVhZCJdLCJzdWIiOiJvVVZ3bnFUTjRETmtkMGgyQkNUZDZFIiwiYnJhbmQiOiJvQlZ3bjJZazZneGFYSl9jdHh5QWg0Iiwib3JnYW5pemF0aW9uIjpudWxsLCJjb2RlX2lkIjoiRS1VZW95R2N6TGhGWnM1MlhmdmZtUSJ9.Om8_PlH3-MPi_9K2Y5xUztdbiErR8ECjqdifsuFy4aMO_6iOwxF36xxVc5PNc_E75IZ0p-PcF9CdL2aw2fTqXga5MdMbwnuxCMDP7-ky7SOR9chnQAK5d3riuUDZfai28cuMptlnuF5jRwHnxdl5IVkNQx5UCnfzlIuCObn4ronPWhLpK7-GhBEpU5NNk1CyUzw5kp9-utcFLgpDNNmMuq49nLKztTyKjNMjIf7yvCLH-Bq5b4DGxbrITzxc0WyfBBM5Qc_T1GErxi7_DqDk10qETAbG9pVlSEscIZvIMXx7m1JXk9ob6VhtKjg2kR18qk_j8JX5SLQbqvk3SzyBTw","refresh_token":"eyJhbGciOiJSU0EtT0FFUC0yNTYiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2Iiwia2lkIjoiZmQ1YmU1MTMtZjAzNy00M2NkLTg3OGEtNjQ1OWJmMGEwNzA4IiwiY3R5IjoiSldUIiwianRpIjoiRUNGazJ3MGgwSzRTY1RodlhsaER4QSIsImNsaWVudF9pZCI6Ik9DLUFaTDg5di1CNFJ4ZyIsImF0X2xlYXN0IjoxMjA5NjAwMDAwfQ.n1vhGTII2q9xd_wl5O03rtLu3i1x6S40wwNykuSfdg_2joBp9MJS5QZ45GialuII81WotWTMx1Uog92Q0ZePklV4rt7r2NRWwvGhUJcr49y03KD5AizByH-LVPtbSpg4LaOATPaBR9Eid-UO1jir9ZRT4XKZ1BeCfhtyxOhAhHg0EufbKzoRza4-qqOkb0-eW7Gl0RNkcOQeY30itUAcz983Tez6pIadL4lP-660JBTLX0RteECs2diA_I9OKnE1sWMdTVHhYyMuRO04IlLSOx6fcFBVt-8RftC25gwdKZrpDJtRvSJLv74d9VmK6WOlw5vrM0zuYNF9uA8BYiJNLw.FCSmIY5oFisgMXOZ83TkVQ.F1erVyzb8gfj28kcvkAIqqV-RGd0F_4HkkWQOiERoachFwFx-_zpD08SgLSAAeJYW7bw_miu8giSyMgW_7Ut_GzXDbuQNt5uB88g5KfkxfjH7so9aJ7Lic3UNA9N7TuFpdmqf_PIwK6DzYbeAZ0uihXU9zhWSB8EVqdJNLDJjDehfza1TfhpgqTx_4WD_0vCzGfh_GW-f1Heu5qAIICX_5LmlkAmauIIUqh7r9vV8cyj8lZrwQCABvHgaxp7wg6hDsnAOWoUb6zKRp1bLzMZOd4RRtZQ1DDwsXt0-BkhVjtYXiGmvKca3t5GHhfKOdQx7IcIuImb5O-Uhmpzt07oytnjBH6HbgpX9L4AlpQeQPoiFlO4-buEM3_0xWI-eT-wHfy6fu6U7NBpsUBA1beYl_WjfSu5v8dbIAfQmgwJnKqH9u1Ui3BSnqmYTBIVFKMhZhphJIIPxheW7ktGi3y8DUDwMYwEK-9FHclhOiSJhnDmMqPQM_kflDskgFYHH_zBWWanOUpWmNmSx0SQCYiZlKESj7yCpOEjgHqk6gjJfPGwetaEkhtLh0D98FAaI8IilB3f-RHT2wLNXxxO8AI7z1-Qi6xmecH8XiPgI-B3t9th_ZjqOxSFpJArC12Hlmu1KmPcZDXDvtH-3o3KJ_ogpeQmg0K6swCdrXrn5TBPKEJiJBnph77PozZfJa40dS8n6uoNXgWmhOHTPHC2n8P_UuoV7JrVYnmP66W9Z1bP7rHXnBg7dcuWVnG9WOiZkQMiCPDypCR41B0x7QjhvsXHuKnAPI11DZVx0CXXyLNtQ5xqh6c6pzm9vJq9gxMKnIGUz0BlQWKblfhkul6HsZOCpxZ_17Wp5pn7YIyoY91VREfhc9THJiqlWixF0dHDaXJBond-Ocu1zd76WI5uSns3TXnrpjSZrBUOxKXM2KhcPs5vBrvjeciEiEQqb1FS-WBrzn-IWQ9eKS8RTzoTVMTmX1Z9MVbDzK917KhMbFt63jDZO7s4RQMQTsHh9KS29OsRVnRgUmukTgVSxsNz0iLKdeeJC5NKeiOK1YXNuWGL9YbnDzCB9scGfWvqV0A1J9JnADcJ6d1yb34d14vC_XvzAWlpmYJe4hrsvo6bVT5jsrOBZPI0dMyvKwkZM1JJzwfTN49O4_QypWgvgZsmbAyjg444DGJEs8u81sT7Q5QZHUzXcKrLr63-v5-oGZystE3667GnNAKE3qOuoXUjA1Ciur-yjakZub65GD_qyR-wVDRsL_KwsfdfyPU3L0bX4JOZxY70djEnV3fehFF8h_wRLEeZRj3qPFBevkPvSTYnF0_UiMVAecYN1wRHK_wVuN7poU5fzd_b2AEV1Q0sQxyBGHWux6Qqg_8iaGZbn_O4-jwfSEUXPOFbWHS0OWHKYRyIDJvfQnC9npCThj3PXV0M43r9_DTeG6jlKf17kgWpKaMbnZqh0ecbNOdMlWHJUftSLDBiQDJkgutIMCvnQTyLW3c9stpfYewCw1XZBPnZOUpihBhS6SNlQP_Yi9TGe5-JTXxHQeqNZcFAAdJaxr4wFKRkMTJ0uCZvcBBSodXB_sz-gp29WqIczLdRVoJwjIX_SHz-vFTWyEFjNmH8d7WA1VfvOduotcQfURirRvUCe06PZksxsg9syZeyPt0jCCx6h4ekbCaG3hbXjoMSNvu5nNW9Wri9RdE1DuAP3RxF8IYbVmEF5hvzn0uFChqR8IaNkELilPdJMXSpAnJwLK2wejxs1drpP0Jr6MAxjDgOqYw.16irA4SLPOS1dLFtXxbtug","token_type":"Bearer","expires_in":14400,"scope":"app:read app:write design:content:read design:meta:read design:content:write design:permission:read design:permission:write folder:read folder:write folder:permission:read folder:permission:write asset:read asset:write comment:read comment:write brandtemplate:meta:read brandtemplate:content:read profile:read"}

res <- content(res, "text", encoding = "UTF-8")

#Extracting the access token and putting it together after 'Bearer'
# # Parse the JSON response
response_list <- jsonlite::fromJSON(res)
# 
# # Extract the URL
accesstoken <- response_list$access_token

# Correctly format headers
headers <- c(
  'Authorization' = paste ('Bearer', accesstoken)
)

# Make the request with the correct headers
res <- VERB("GET", url = "https://api.canva.com/rest/v1/brand-templates/DAGUVydZ3L4/dataset", add_headers(.headers = headers))

# Output the content
cat(content(res, 'text')) 
