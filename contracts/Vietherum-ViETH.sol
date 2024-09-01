// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// Author: iHuydang

contract Viethereum is Context, ERC20, IERC20Metadata {
    // Initial total supply and thresholds
        uint256 public constant TOTAL_SUPPLY = 100_000_000 * 10**decimals(); // Initial total supply of 100 million tokens
            uint256 public constant PURCHASE_THREtotal amount of tokens bought
                uint2eshold for total amount of tokens bought
                    uint256 public constant SALE_THRESHOLD = 24_000 * 10**decimals(); // Threshold for total amount of tokens sold

                        AggregatorV3Interface internal priceFotalPurchasedTokens = 0;
                            uuctor(address prialRedeemedTokens = 0;

                                constructor(addr {
                                        _mint(_msgSender(), TOTAL_SUPPLY); // Mint the initial total supply to the contract deployer
                                                pri total supply to the contract deployer
                                                        pri total supply to the contract deployer
                                                                priceFeed = AggregatorV3Interface(priceFeedAddress); // Initialize Chainlink Price Feed
                                                                    }

                                                                        // Function to get the VNĐ/USDT price from Chainlink
                                                                            function getLatestPrice() public view returns (ine, {
                                                                                    (
                                                                                                , 
                                                                                                            int price, 
                                                                                                                        , 
                                                                                                                                    , 
                                                                                                                                            ) = priceFeed.latestRoundData();
                                                                                                                                                    return price;
                                                                                                                                                        }

                                                                                                                                                            // Function to get the VNĐ exchange rate
                                                                                                                                                                function getRateVNĐ() public pure returns (uint256) {
                                                                                                                                                                        return 1000 * 10**decimals(); // Fixed rate 1 VIETH = 100ngeNĐate
                                                                                                                                                                            function get int price = getLatestPrice();
                                                                                                                                                                                    uint256 ratlinĐ         return 1000 * 10**decimals() / rateVNĐ; // Exchange rate with USD0**decimals() / rateVNĐ; // Exchange rate with USD0**decimals() / rateVNĐ; // Exchange rate with USD0**deci

                                                                                                                                                                                    ls( // Function // Exchange rate with USDT
                                                                                                                                                                                    U   }

                                                                                                                                                                                        // Function to sell tokens and receive USDT/VNĐ
                                                                                                                                                                                            function sellTokens(uint256 tokenAmount) public {
                                                                                                                                                                                                    require(balanceOf(msg.sender) >= tokenAmount, "Insufficient balance");
                                                                                                                                                                                                            uint256 usdlsmou
                                                                                                                                                                                                                    nAmount * getRateUSDT() / 10**decimals();
                                                                                                                                                                                                                            uint256 vnđAmount = tokenAmount * getRateVNĐ() / 10**decimals();

                                                                                                                                                                                                                                sender,Burkenokount);
                                                                                                                                                                                                                                        totalRedeemedTokens += tokenAmount;

                                                                                                                                                                                                                                                // Adjust sale medTokens += tokenAmount;

                                                                                                                                                                                                                                                        // Adjust sale rate if threshold is reached
                                                                                                                                                                                                                                                                if (totalRedeemedTokens >= SALE_THRESHOLD) {
                                                                                                                                                                                                                                                                            uint256 newRateVNĐ = getRateVNĐ() * 999_999 / 1_000_000;
                                                                                                                                                                                                                                                                                        // Apply new VNĐ rate here
                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                        // Transfer USDT and VNĐ here
                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                // Function to buy tokens with USDT
                                                                                                                                                                                                                                                                                                                    function buyTokensAmoun256 usdtAmount) public {
                                                                                                                                                                                                                                                                                                                            require(usdtAmount > 0, "Amount must be greater than zero");
                                                                                                                                                                                                                                                                                                                                    uint256 tokenAmount = usdtAmount * getRateUSDT() / 10**decimals();require(tokenAmount > 0, "Token amount must be greater than zero");

                                                                                                                                                                                                                                                                                                                                            // Mint new tokens when buying
                                                                                                                                                                                                                                                                                                                                                    _midT(msg.sen tokenAmount;
                                                                                                                                                                                                                                                                                                                                                    n        // Adjust purchaseTokee if=threshold is r
                                                                                                                                                                                                                                                                                                                                                    ached
                                                                                                                                                                                                                                                                                                                                                            if (totchase rate if enres=old is reached
                                                                                                                                                                                                                                                                                                                                                                    if (totalPurchasedTokens >e PUR= gSERateVNĐ() * 999_000 / 1_000_000;
                                                                                                                                                                                                                                                                                                                                                                         ateVNĐ // etply VNĐ() Đ rate here
                                                                                                                                                                                                                                                                                                                                                                                 }

                                                                                                                                                                                                                                                                                                                                                                                         // Transfer VIETH here
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                     }

                                                                                                                                                                                                                                                                                                                                                                                                             // Transfer VIETH here
                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                 }
