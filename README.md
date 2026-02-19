# PonyPonyAIchat
Ren'Py framework for AI-generated dialogue with automated sprite/asset pipeline
PonyPonyAI 🦄
PonyPonyAI is an experimental sandbox visual novel engine built on Ren'Py, designed to bring the world of My Little Pony: Friendship is Magic to life using generative AI. Unlike traditional scripted visual novels, this project integrates OpenAI's API to generate dynamic, in-character dialogue and interactions in real-time.

🌟 Key Features
🧠 LLM-Driven Conversations: Characters are powered by Large Language Models (LLM), allowing for infinite, non-scripted conversations that maintain canon personalities.

📂 Auto-Adaptive Asset Scanning: A custom-built SpriteScanner automatically indexes character sprites and tags from the directory structure, eliminating the need for manual image definitions. Supports smart filename parsing (e.g., dash happy.png → [sprite: dash happy]).

🔄 Dynamic Character Management:

Smart Roster: Characters automatically enter/exit scenes based on context.

Tag Aliasing: Automatically resolves references like "RD", "Rainbow", or "Dash" to the correct canonical character tag.

Sprite Rotation: Manages visual crowding by automatically "stepping aside" less active characters when the screen is full.

📅 JSON-Based Scheduling: NPC behaviors and locations are driven by easily editable schedule.json files, supporting day/night cycles and weekly routines.

🤖 AI World Control: The "Unlock AI Control" feature allows the LLM to autonomously trigger scene changes, character entries, and emotion updates via strictly formatted command protocols.

Disclaimer:
This is a non-profit fan project based on My Little Pony: Friendship is Magic. All characters, settings, and original assets are the property of Hasbro. This project is not affiliated with or endorsed by Hasbro. Used for educational and research purposes in AI interaction design.
