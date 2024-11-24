VAR sawShadows = false
VAR embracedVoice = false
VAR learnedSymbol = false

->start

=== start ===
I had always been fascinated by the unknown, and my new job at the interstellar repair agency promised just that. As I stepped into the dimly lit meeting hall, an alarm blared, a shrill call to action echoing through the corridors.

* [Hurry to the office, curiosity piqued]
    With a mix of excitement and trepidation, I hurried toward the main office, my footsteps echoing in the empty hallway.
    -> briefing_room
    
* [Proceed with caution, feeling a sense of unease]
    A sense of foreboding washed over me as I cautiously made my way to the office, the alarm's wail like a harbinger of doom.
    -> briefing_room

=== briefing_room ===
Inside the office, I was greeted by the stern faces of my colleagues - Janet's analytical gaze, Paul's nervous twitch, Russel's stoic demeanor, Philip's inquisitive frown, and Jean, our commanding officer, whose eyes seemed to hide a secret.

Jean explained our mission: investigate the mysteriously lowering atmospheric pressure on the Saturn colony. As we prepared to board the 'Saturn Sailer', Jean's hand clasped my shoulder.

* [Acknowledge the gravity of the situation]
    I nodded solemnly, understanding the weight of our task.
    -> onboard_sailer
* [Voice your eagerness to learn]
    "I'm ready to face whatever comes," I said, eager to prove my worth.
    -> onboard_sailer

=== onboard_sailer ===
Aboard the Saturn Sailer, the air was tense. As I checked my equipment, a crackled voice over the radio ordered us to the cockpit. Jean's warning about the warp was cryptic: "Don't look outside. Ignore the whispers."

* [Adhere strictly to Jean's instructions]
    Trusting Jean's experience, I averted my gaze from the windows, focusing on my console.
    -> during_warp
* [Give in to your curiosity, despite the warning]
    The allure of the unknown was too strong. As I glanced outside, shadows danced at the edge of my vision.
    ~ sawShadows = true
    -> during_warp

=== during_warp ===
The ship vibrated as we entered warp. Whispers filled the air, a cacophony of unknown tongues. The walls seemed to pulse and breathe.

* {sawShadows} [Investigate the shadows]
    My heart racing, I cautiously peered closer at the shadows, trying to discern their form.
    -> shadow_encounter
* [Try to ignore the changes and focus on your tasks]
    I forced myself to concentrate on my console, ignoring the surreal phenomena around me.
    -> after_warp

=== shadow_encounter ===
{& As I watched, the shadows coalesced into forms both grotesque and mesmerizing. A voice, not heard but felt, echoed in my mind, speaking of ancient secrets and forbidden knowledge. | 01000001 01110011 00100000 01001001 00100000 01110111 01100001 01110100 01100011 01101000 01100101 01100100 00101100 00100000 01110100 01101000 01100101 00100000 01110011 01101000 01100001 01100100 01101111 01110111 01110011 00100000 01100011 01101111 01100001 01101100 01100101 01110011 01100011 01100101 01100100 00100000 01101001 01101110 01110100 01101111 00100000 01100110 01101111 01110010 01101101 01110011 00100000 01100010 01101111 01110100 01101000 00100000 01100111 01110010 01101111 01110100 01100101 01110011 01110001 01110101 01100101 00100000 01100001 01101110 01100100 00100000 01101101 01100101 01110011 01101101 01100101 01110010 01101001 01111010 01101001 01101110 01100111 00101110 00100000 01000001 00100000 01110110 01101111 01101001 01100011 01100101 00101100 00100000 01101110 01101111 01110100 00100000 01101000 01100101 01100001 01110010 01100100 00100000 01100010 01110101 01110100 00100000 01100110 01100101 01101100 01110100 00101100 00100000 01100101 01100011 01101000 01101111 01100101 01100100 00100000 01101001 01101110 00100000 01101101 01111001 00100000 01101101 01101001 01101110 01100100 00101100 00100000 01110011 01110000 01100101 01100001 01101011 01101001 01101110 01100111 00100000 01101111 01100110 00100000 01100001 01101110 01100011 01101001 01100101 01101110 01110100 00100000 01110011 01100101 01100011 01110010 01100101 01110100 01110011 00100000 01100001 01101110 01100100 00100000 01100110 01101111 01110010 01100010 01101001 01100100 01100100 01100101 0110111 | 41 73 20 49 20 77 61 74 63 68 65 64 2c 20 74 68 65 20 73 68 61 64 6f 77 73 20 63 6f 61 6c 65 73 63 65 64 20 69 6e 74 6f 20 66 6f 72 6d 73 20 62 6f 74 68 20 67 72 6f 74 65 73 71 75 65 20 61 6e 64 20 6d 65 73 6d 65 72 69 7a 69 6e 67 2e 20 41 20 76 6f 69 63 65 2c 20 6e 6f 74 20 68 65 61 72 64 20 62 75 74 20 66 65 6c 74 2c 20 65 63 68 6f 65 64 20 69 6e 20 6d 79 20 6d 69 6e 64 2c 20 73 70 65 61 6b 69 6e 67 20 6f 66 20 61 6e 63 69 65 6e 74 20 73 65 63 72 65 74 73 20 61 6e 64 20 66 6f 72 62 69 64 64 65 6e 20 6b 6e 6f 77 6c 65 64 67 65 2e}

* [Resist the temptation and look away]
    With a great effort, I tore my gaze from the shadows, a cold sweat breaking out on my forehead.
    -> after_warp
* [Embrace the unknown and listen to the voice]
    Entranced, I listened, the voice filling my mind with images of cosmic horror and beauty.
    ~ embracedVoice = true
    -> after_warp

=== after_warp ===
The ship steadied, and Jean's voice broke through the trance. "Everyone okay?" he asked, his eyes lingering on me. I could lie or confess my experience.

* [Lie and pretend everything is normal]
    "I'm fine," I lied, trying to shake off the lingering dread.
    -> descent_into_madness
* {sawShadows} [Confess your experience to Jean]
    "I saw something... out there," I admitted, my voice trembling.
    -> jean_conversation
- else
    "I'm fine," I reassured, though the whispers still echoed in my mind.
    -> descent_into_madness
    
=== jean_conversation ===
Jean's expression hardened. "You should have listened to me," he said, a hint of fear in his eyes. "Be careful. You don't know what you've invited in."

* [Ask Jean for more information]
    "What do you mean?" I pressed, seeking answers.
    -> jean_revelation
* [Stay silent and ponder his warning]
    I remained silent, mulling over his ominous words as we prepared to land.
    -> descent_into_madness

=== jean_revelation ===
Jean's eyes darted around before he leaned in closer. "There are entities, forces beyond the veil of our reality. What you saw... it's just the beginning. Be cautious, and try not to draw their attention."

* [Insist on more details]
    "But what are they? How do you know about them?" I pressed, seeking clarity amid the growing dread.
    -> revelation_details
* [Nod and keep your thoughts to yourself]
    I nodded silently, deciding to keep my mounting fears to myself.
    -> preparing_for_colony

=== revelation_details ===
Jean sighed, a look of resignation crossing his face. "Years ago, I... I saw something similar. Since then, I've researched, tried to understand. But some truths are too terrifying to comprehend." His warning sent chills down my spine.

* [Ask how to protect yourself]
    "Is there a way to protect ourselves from them?" I asked, my voice barely above a whisper.
    -> protection_advice
* [Change the subject and focus on the mission]
    Shaken, I decided to focus on the task at hand. "Let's just focus on the mission," I said, trying to steer away from the ominous topic.
    -> preparing_for_colony

=== protection_advice ===
"There are symbols, old rituals that some claim offer protection. But their efficacy is... dubious at best," Jean muttered, almost to himself. "Just stay alert, and don't let curiosity be your downfall."

    * [Inquire about the symbols]
    "Can you show me these symbols? Maybe they could help," I asked, hoping for some tangible protection.
    -> learn_symbols
* [Decide to stay rational and focus on the mission]
    I nodded, deciding it was best to focus on the task at hand rather than delve into superstitions.
    -> mission_focus

=== learn_symbols ===
Jean hesitated, then drew a series of arcane symbols on a piece of paper. "I don't know if they work, but it's all I've got. Be careful," he warned, his voice tinged with fear.

* [Study the symbols and keep the paper]
    I studied the symbols carefully, folding the paper and keeping it in my pocket. I felt a strange sense of understanding as I looked at them.
    ~ learnedSymbol = true
    -> mission_preparation
* [Dismiss the symbols as superstition]
    Despite Jean's seriousness, I couldn't bring myself to believe in such things. I thanked him but left the paper behind.
    -> mission_preparation
    
=== preparing_for_colony ===
As we prepared to disembark, the weight of Jean's words hung over me. The Saturn colony loomed outside, its atmosphere eerily calm but charged with an unspoken menace.

* [Stay vigilant and observe your surroundings]
    I resolved to stay vigilant, keenly observing every detail of the colony as we prepared to step into the unknown.
    -> colony_exploration
* [Focus solely on the mission objectives]
    Shaking off the unease, I focused on the technical aspects of our mission, trying to ignore the creeping sense of dread.
    -> technical_inspection

=== colony_exploration ===
The colony was eerily silent as we stepped out. The air was thick with a sense of foreboding, and every shadow seemed to dance with hidden secrets.

* [Explore the abandoned sectors]
    Intrigued by the desolation, I ventured into the abandoned sectors of the colony, where the air seemed to whisper ancient secrets.
    -> abandoned_sectors
* [Stick with the team and inspect the living quarters]
    Deciding safety in numbers was best, I stuck with the team to inspect the living quarters, looking for clues to the atmospheric anomalies.
    -> living_quarters_inspection

=== abandoned_sectors ===
In the abandoned sectors, the walls were covered in strange, undecipherable symbols. They seemed to pulsate with a life of their own, drawing me in.

* [Study the symbols closely]
    Captivated, I studied the symbols, trying to decipher any meaning from their arcane designs.
    -> symbol_study
* [Leave the sector and rejoin the team]
    Unnerved by the symbols, I quickly left the sector to rejoin my team.
    -> living_quarters_inspection
    
    === symbol_study ===
* {learnedSymbol} [Read the symbols using your knowledge]
    Recognizing the symbols from Jean's notes, I deciphered their meaning. They spoke of a warning, a barrier against something ancient and malevolent. I realized I needed to warn the others.
    -> warn_the_crew
* {not learnedSymbol} [Try to guess the meaning of the symbols]
    Despite their familiarity, I couldn't quite grasp their meaning. They were ominous, that much was clear.
    -> continue_exploration

=== warn_the_crew ===
Rushing back to the team, I explained the meaning of the symbols. "They're warnings," I said breathlessly. "We're not supposed to be here." The team looked at each other, unease spreading among us.

* [Urge the team to leave the colony immediately]
    "We need to leave, now!" I insisted, the urgency in my voice undeniable.
    -> immediate_departure
* [Suggest proceeding with caution]
    "Let's be careful and continue, but we should be prepared for anything," I advised, trying to maintain a balance.
    -> cautious_continuation
    
    === cautious_continuation ===
* [Suggest proceeding with caution]
    "Let's be careful and continue, but we should be prepared for anything," I advised, trying to maintain a balance.
    -> cautious_approach

=== immediate_departure ===
The team, rattled by my discovery, agreed to leave. But as we hurried back to the ship, a dense, otherworldly fog enveloped us. Disoriented, we became separated in the chaos.

* [Search for the team in the fog]
    I called out, stumbling through the fog in search of my team.
    -> lost_in_fog
* [Head straight for the ship]
    Fear gripping my heart, I decided to head straight for the ship, hoping the others would do the same.
    -> ship_escape

=== lost_in_fog ===
The fog was impenetrable, and the more I searched, the more disoriented I became. Whispers echoed around me, and shadowy figures danced in the periphery of my vision. I was hopelessly lost.
    ->END

=== ship_escape ===
I managed to reach the ship, but I was alone. As I waited for the others, a creeping realization dawned on me – they were not coming. I had to make a decision.

* [Wait for the team, risking your own safety]
    I decided to wait, hoping against hope that my team would return.
    -> waiting_ending
* [Leave the colony alone, abandoning the team]
    With a heavy heart, I initiated the launch sequence, leaving the colony and my team behind.
    -> solitary_escape

=== waiting_ending ===
Hours passed, but no one came. The ship's systems began to fail, the same otherworldly influence taking hold. I was trapped, alone with my guilt and the encroaching darkness.
    ->END
    
=== solitary_escape ===
As the ship left the colony's orbit, I looked back at the shrouded planet. I had survived, but at what cost? The memories of the colony and my lost team would haunt me forever.
    ->END

=== living_quarters_inspection ===
The living quarters were in disarray, signs of a hasty evacuation evident. Amidst personal belongings, I found scattered notes referencing 'unseen watchers'.

* [Investigate the notes further]
    Curiosity piqued, I delved deeper into the notes, trying to piece together the story they told.
    -> notes_investigation
* [Report your findings to the team]
    Feeling the urgency of our mission, I gathered the notes to share with the team.
    -> team_briefing

=== descent_into_madness ===
As we prepared to land on the Saturn colony, my mind was a cacophony of whispers and shadowy figures. The others seemed oblivious, focusing on the mission ahead. I felt a growing urge, a call from the void that I couldn't ignore.

* [Try to suppress the voices and focus on the mission]
    I clenched my fists, attempting to focus on the mission and ignore the maddening chorus in my head.
    -> forced_composure
* [Embrace the whispers and their dark allure]
    The whispers grew more insistent, promising truths beyond human understanding. I felt an irresistible pull towards them.
    -> embrace_the_void

=== forced_composure ===
Despite my efforts, the whispers intensified, weaving into my thoughts. As we touched down on the colony, reality seemed to warp. The crew was oblivious to the true nature of our mission - a mission that I alone understood.

* [Continue to play along with the mission]
    I forced a mask of normality, joining the team as we prepared to disembark.
    -> final_decision
* [Yield to the call of the void]
    The whispers became commands, urging me to act. I knew what I had to do.
    -> embrace_the_void
    
=== embrace_the_void ===
Guided by the voices, I moved with a purpose that was not entirely my own. As the team readied for the colony, I quietly slipped away to the ship's control panel.

* [Eject the team into space]
    With a sense of detachment, I initiated the emergency release, opening the airlocks and watching as my team was ejected into the void.
    -> void_ending

=== void_ending ===
As the crew floated into the endless expanse, the voices crescendoed in triumph. I stood alone, the Saturn colony before me, a gateway to incomprehensible realms. The madness had claimed me, and I embraced it fully.
    ->END

=== mission_focus ===
Jean nodded, his expression still troubled. "Good. Keep your head clear. We need you focused." I felt a twinge of unease but resolved to concentrate on our mission.
-> mission_preparation

=== mission_preparation ===
As we prepared to disembark, the weight of the unknown bore down on me. The Saturn colony lay ahead, a silent enigma waiting to be unraveled.

* [Equip yourself thoroughly]
    I double-checked my equipment, ensuring I was as prepared as possible for whatever lay ahead.
    -> colony_landing
* [Mentally prepare for the unknown]
    I took a moment to mentally brace myself, running through potential scenarios in my mind.
    -> colony_landing

=== colony_landing ===
The Saturn Sailer touched down, the heavy silence of the colony enveloping us. We stepped out, ready to face whatever mysteries awaited.

* [Investigate the colony's central hub]
    Determined to uncover the truth, I led the way towards the colony's central hub.
    -> central_hub_exploration
* [Suggest splitting up to cover more ground]
    "Let's split up. We can cover more ground that way," I suggested to the team.
    -> split_up_decision

=== central_hub_exploration ===
The central hub was eerily quiet. Abandoned equipment and half-finished work suggested a sudden departure. I couldn't shake off the feeling of being watched.

* [Search for any operational terminals]
    I searched for any terminals that might still be operational, hoping to find logs or data.
    -> terminal_investigation
* [Explore the deeper sections of the hub]
    Intrigued by what secrets the hub might hold, I ventured deeper into its bowels.
    -> deep_hub_exploration

=== terminal_investigation ===
I found a terminal that flickered to life. As I navigated through the logs, a disturbing pattern emerged – mentions of shadows and whispers, much like what I experienced.

* [Delve deeper into the logs]
    I continued to dig through the logs, searching for more clues.
    -> log_discovery
* [Leave the terminal and regroup with the team]
    Feeling a chill down my spine, I decided it was best to regroup with the team and share this information.
    -> regroup_with_team

=== log_discovery ===
As I read on, the screen started to distort, the words twisting into incomprehensible symbols. A sense of dread overwhelmed me.

* [Try to decode the symbols]
    I focused on the screen, attempting to decode the symbols.
    -> decode_attempt
* [Back away from the terminal]
    Feeling an overwhelming sense of danger, I backed away from the terminal.
    -> terminal_hazard

=== decode_attempt ===
The symbols seemed to leap off the screen, swirling around me. My vision blurred, and a voice whispered in my ear, "You should not have seen this."
    ->END

=== terminal_hazard ===
As I stepped back, the terminal sparked and exploded, sending shrapnel flying. I was hit, and everything went black.
    ->END

=== technical_inspection ===
Focusing on our mission, I led the team to conduct a technical inspection of the colony's systems. The eerie silence of the abandoned structures added a sense of urgency to our task.

* [Inspect the atmospheric control systems]
    Our first priority was the atmospheric control systems, which might hold clues to the colony's issues.
    -> atmospheric_systems_inspection
* [Check the power generators]
    Ensuring the power generators were operational was critical for both the colony's infrastructure and our safety.
    -> generator_inspection

=== atmospheric_systems_inspection ===
The control room was in disarray, but the systems were still operational. As I delved into the data, I noticed strange fluctuations that didn't align with any known technical issues.

* [Attempt to recalibrate the systems]
    Believing I could fix the anomalies, I began recalibrating the systems.
    -> recalibration_attempt
* [Leave the systems as they are and report back]
    Unsure of what I was dealing with, I decided it was best to report these findings to the team.
    -> report_findings

=== recalibration_attempt ===
As I adjusted the controls, the readings became increasingly erratic. Suddenly, the system locked me out, and a low hum filled the room. The air grew thick, and I realized too late that I had triggered something catastrophic.
    ->END

=== report_findings ===
I gathered the data and returned to the team, uneasy about the strange readings. Together, we decided our next move.

* [Investigate other technical areas of the colony]
    We chose to broaden our inspection to other technical areas, hoping to find more answers.
    -> broader_inspection
* [Consult with Jean about the findings]
    Feeling out of my depth, I suggested consulting Jean about the data.
    -> consult_jean

=== generator_inspection ===
The generators were surprisingly intact, but as I examined them, I noticed an unfamiliar, subtle symbol etched onto their surfaces – similar to what Jean had shown me.

* [Ignore the symbols and focus on the generator's functionality]
    I decided to focus on the generators' functionality, dismissing the symbols as irrelevant.
    -> functionality_check
* [Study the symbols, recalling Jean's notes]
    The symbols piqued my curiosity. Remembering Jean's notes, I tried to decipher their meaning.
    -> symbol_decipher

=== functionality_check ===
The generators appeared operational, but as I powered them up, the symbols began to glow ominously. A wave of energy surged through the colony, and the ground beneath me trembled violently.
    ->END

=== symbol_decipher ===
As I examined the symbols, a sense of unease grew. They seemed to warn of a power not to be tampered with – a warning I had just ignored by activating the generators.

* [Turn off the generators immediately]
    Realizing the potential danger, I quickly shut down the generators.
    -> emergency_shutdown
* [Leave the generators running and inform the team]
    I decided to leave the generators running while I informed the team of my discovery.
    -> inform_team
=== inform_team ===
* [Leave the generators running and inform the team]
    I decided to leave the generators running while I informed the team of my discovery.
    -> briefing

=== briefing ===
I found the team and relayed my findings about the generators and the strange symbols. The atmosphere was tense as we realized the potential danger we were in.

* [Suggest shutting down the generators as a group]
    We should shut down these generators together, I proposed, hoping there was still time to prevent disaster.
    -> group_shutdown_attempt
* [Advocate for leaving the colony immediately]
    This is too dangerous. We need to evacuate immediately, I urged, sensing an impending catastrophe.
    -> immediate_evacuation_call

=== group_shutdown_attempt ===
Together, we rushed to the power hub. As we attempted to shut down the generators, they surged with an uncontrollable energy, enveloping us in a blinding light. When our vision cleared, we were no longer in the colony – we had been transported to an alien, nightmarish realm.
    ->END
    
=== immediate_evacuation_call ===
Our decision to evacuate was unanimous, but as we made our way to the exit, the generators' hum intensified. The colony began to collapse around us, the very fabric of reality coming undone.
    ->END

=== symbol_consequences ===
As we discussed our options, the symbols on the generators began to glow ominously. A sense of dread washed over us as we realized we were not alone. Shadows began to move, and whispers filled the air.

* [Try to decipher the symbols to find a solution]
    In a desperate attempt, I focused on deciphering the symbols, hoping to find a way to reverse what was happening.
    -> deciphering_desperation
* [Resign to the situation and brace for the unknown]
    Overwhelmed by fear, we resigned ourselves to whatever was coming, standing together in the face of the unknown.
    -> resigned_acceptance

=== deciphering_desperation ===
My efforts to understand the symbols only hastened the descent into chaos. The air around us thickened, and unseen forces gripped our minds. One by one, we lost ourselves to the madness.
    ->END
 
=== resigned_acceptance ===
As we braced ourselves, the reality of the colony shifted into a nightmarish landscape. We were no longer explorers but prisoners of a cosmic horror beyond our understanding.
    ->END
 
=== emergency_shutdown ===
* [Turn off the generators immediately]
    Realizing the potential danger, I quickly shut down the generators.
    -> shutdown_consequences

=== shutdown_consequences ===
The shutdown seemed to go smoothly at first, but then the generators began to hum with a frequency that resonated through the entire colony.

* [Investigate the source of the humming]
    Compelled to understand the source of this ominous humming, I ventured closer to the generators.
    -> humming_investigation
* [Leave the area and warn the team]
    Sensing an impending threat, I decided to leave immediately and warn the team.
    -> urgent_warning

=== humming_investigation ===
As I approached, the generators' hum grew into a cacophony of otherworldly sounds. Shadows danced around me, and the air rippled with unseen energy. Then, without warning, reality itself seemed to tear apart.

    ->END
    
=== urgent_warning ===
I rushed to find the team, the generators' hum growing louder behind me. But it was too late. The entire colony began to shudder, and a darkness enveloped us, swallowing everything in its path.
    ->END
    
=== shutdown_fallout ===
The shutdown triggered a chain reaction. The colony's systems failed one by one, plunging us into darkness. In the pitch black, we heard things moving in the shadows, coming for us.

* [Try to restore power to the colony]
    Desperate, I attempted to restore power, hoping to fend off the encroaching darkness.
    -> restoration_attempt
* [Accept the inevitable and face the darkness]
    Overwhelmed by fear, we resigned ourselves to the darkness, awaiting our unknown fate.
    -> dark_acceptance

=== restoration_attempt ===
My efforts were in vain. The generators remained silent, and the darkness grew closer, its whispers promising an eternal void. One by one, we were consumed by the darkness.
    ->END
    
=== dark_acceptance ===
In accepting our fate, we stood together, facing the encroaching shadows. As they closed in, we realized the truth of our insignificance in the face of cosmic horror.
 ->END
 
 === continue_exploration ===
Intrigued but unsettled by the symbols, I decided to continue exploring the abandoned sectors. The air grew colder, and a sense of dread settled over me.

* [Explore the neglected research lab]
    Hoping to find more answers, I made my way to a neglected research lab I had noticed earlier on the map.
    -> research_lab_exploration
* [Head towards the living quarters]
    I thought I might find more personal clues in the living quarters.
    -> living_quarters_exploration

=== research_lab_exploration ===
The lab was in disarray, papers and equipment scattered everywhere. Among the chaos, I found a journal with entries describing experiments related to the symbols.

* [Read the journal entries]
    Curiosity overcame me, and I began to read the journal, hoping for some insight.
    -> journal_reading
* [Take the journal and decide to leave the lab]
    Feeling a growing sense of unease, I took the journal with the intention of examining it later in a safer place.
    -> exit_lab

=== exit_lab ===
* [Take the journal and decide to leave the lab]
    Feeling a growing sense of unease, I took the journal with the intention of examining it later in a safer place.
    -> journal_influence

=== journal_influence ===
As I left the lab with the journal, a sense of paranoia began to creep over me. The words within seemed to echo in my mind, whispering secrets and forbidden knowledge.

* [Read the journal in a secluded area]
    Seeking solitude, I opened the journal in a quiet corner of the colony, ready to uncover its secrets.
    -> secluded_reading
* [Bring the journal to the team for a collective review]
    Feeling the weight of responsibility, I decided to bring the journal to the team, hoping for shared insight.
    -> team_review

=== secluded_reading ===
The journal's contents were disturbing, detailing experiments that tapped into otherworldly forces. As I read, the words seemed to shift and change, pulling me into a trance-like state.
    ->END
    
=== team_review ===
The team gathered to examine the journal, but as we read, a collective dread took hold. The words twisted our perception, and reality began to warp around us. We were no longer in the colony; we were somewhere else, a realm of darkness and madness.
    ->END
 
=== journal_curse ===
Carrying the journal seemed to curse our every step. Strange occurrences began to plague us – shadows moving in the corner of our eyes, whispers in the dark, and an ever-growing sense of being watched.

* [Attempt to destroy the journal]
    In a desperate bid to end the curse, I tried to destroy the journal.
    -> destruction_attempt
* [Hide the journal and try to ignore its influence]
    Hoping to mitigate its influence, I hid the journal away, trying to ignore the creeping dread.
    -> hide_and_ignore

=== destruction_attempt ===
My attempt to destroy the journal only unleashed its full power. The air crackled with otherworldly energy, and the darkness around us came alive, swallowing us whole.
    ->END
    
=== hide_and_ignore ===
Hiding the journal did little to stop its influence. The nightmares grew more intense, and our grip on reality weakened. One by one, we succumbed to the journal's insidious hold.
    ->END
 
=== journal_reading ===
As I read the journal, the words started to blur and twist. The room seemed to spin, and an overwhelming sense of vertigo seized me. The last entry read: "We should never have meddled with these forces."
    ->END

=== living_quarters_exploration ===
The living quarters were hauntingly quiet. In one of the rooms, I found a wall covered in the same symbols, arranged in a deliberate pattern.

* [Attempt to interact with the symbol pattern]
    Driven by a reckless urge, I reached out to touch the symbols, trying to discern their purpose.
    -> symbol_interaction
* [Leave the room and continue exploring]
    Intimidated by the symbols, I decided to leave the room and continue exploring elsewhere.
    -> further_exploration

=== symbol_interaction ===
The moment I touched the symbols, a shockwave rippled through the colony. A deafening roar filled the air, and the ground shook violently. I had unwittingly unleashed something terrible.
    ->END
    
=== cautious_approach ===
With a shared sense of wariness, we proceeded through the colony. The oppressive atmosphere weighed heavily on us as we moved towards the central hub, the heart of the colony's mysteries.

* [Investigate the central control room]
    The central control room might hold key information about what transpired here.
    -> control_room_investigation
* [Examine the abandoned research areas]
    The research areas could provide clues about any experiments or studies that might explain the situation.
    -> research_area_exploration

=== control_room_investigation ===
In the control room, amidst the tangle of wires and blinking lights, we found a logbook. Its entries hinted at a discovery that was both wondrous and terrifying.

* [Analyze the logbook entries]
    We gathered around the logbook, piecing together the events that led to the colony's downfall.
    -> logbook_analysis
* [Search for any surviving communication logs]
    Communication logs might reveal distress calls or final messages that could provide crucial context.
    -> communication_logs_search

=== communication_logs_search ===
* [Search for any surviving communication logs]
    Communication logs might reveal distress calls or final messages that could provide crucial context.
    -> discovery

=== discovery ===
I found the communications console still operational. The logs were a mix of frantic calls for help and cryptic messages filled with dread.

* [Attempt to trace the source of the messages]
    Driven by a need to understand, I attempted to trace the source of these disturbing messages.
    -> message_tracing
* [Gather the logs and bring them to the team]
    I gathered the logs, planning to bring them to the team for a collective analysis.
    -> team_analysis

=== message_tracing ===
As I traced the messages, I stumbled upon a frequency that emitted a haunting melody. It was mesmerizing, and as I listened, my surroundings began to distort, reality bending to the tune's will.
    ->END
 
=== team_analysis ===
Presenting the logs to the team, we listened together. The messages were unnerving, speaking of shadows creeping and a presence that was always watching. A collective paranoia began to take hold.

* [Insist on investigating the source of the paranoia]
    Convinced there was more to discover, I urged the team to investigate the source of these messages.
    -> paranoia_source_investigation
* [Recommend immediate evacuation]
    The messages were too disturbing. I recommended we evacuate the colony at once.
    -> evacuation

=== paranoia_source_investigation ===
Our search led us to a secluded part of the colony. There, we found a chamber with walls covered in strange symbols. The air was thick with an otherworldly energy, and as we entered, the door sealed shut behind us.
    ->END
    
=== evacuation ===
The decision to evacuate was unanimous, but as we prepared to leave, the colony's systems began to fail. The darkness grew, and unseen forces whispered from the shadows, ensnaring us in their grip.
    ->END

=== research_area_exploration ===
The research areas were littered with strange equipment and cryptic notes. Among them, we found a sealed chamber, its purpose unclear.

* [Attempt to open the sealed chamber]
    Driven by a need to understand, we decided to open the chamber.
    -> chamber_opening
* [Leave the chamber untouched and collect the notes]
    Deciding not to tamper with the unknown, we collected the notes for analysis.
    -> note_collection

=== note_collection ===
* [Leave the chamber untouched and collect the notes]
    Deciding not to tamper with the unknown, we collected the notes for analysis.
    -> analysis_outcome

=== analysis_outcome ===
With the notes in hand, we left the chamber, feeling a false sense of security. As we began analyzing the notes, it became clear that the mere knowledge they contained was a curse in itself.

* [Attempt to decipher the notes thoroughly]
    Determined to glean knowledge from the notes, we poured over them, unaware of the danger they posed.
    -> deciphering_doom
* [Destroy the notes, fearing their content]
    Realizing the potential danger, we decided to destroy the notes, hoping to avert any risk.
    -> destruction

=== deciphering_doom ===
The more we read, the more the words seemed to twist and corrupt our thoughts. Visions of otherworldly horrors began to plague us, and a creeping madness took hold.
    ->END

=== destruction ===
Our attempt to destroy the notes backfired. As they burned, a dark energy was released, enveloping us. We were consumed by a void, our last moments filled with unspeakable terror.
    ->END

=== chamber_opening ===
* [Attempt to open the sealed chamber]
    Driven by a need to understand, we decided to open the chamber.
    -> opening_consequences

=== opening_consequences ===
The chamber opened with a hiss, revealing an interior shrouded in darkness. As we stepped inside, a sense of foreboding enveloped us.

* [Investigate the contents of the chamber]
    Compelled by curiosity, we began to investigate the chamber's mysterious contents.
    -> contents_investigation
* [Record the chamber's details and leave quickly]
    Sensing danger, we decided to quickly record what we could and then leave.
    -> hasty_documentation

=== contents_investigation ===
In the heart of the chamber, we found an artifact pulsating with an eerie energy. As we approached it, the air crackled with a palpable tension, and reality seemed to warp around us.

* [Touch the artifact]
    Drawn to the artifact, I reached out to touch it, unknowingly unleashing an ancient curse.
    -> artifact_curse
* [Refrain from touching and back away]
    Realizing the danger, we refrained from touching the artifact and backed away, but it was already too late.
    -> reluctant_escape

=== artifact_curse ===
Upon touching the artifact, visions of unspeakable horrors flooded my mind. The chamber sealed shut, trapping us with an ancient entity awakened from its slumber.
    ->END

=== reluctant_escape ===
As we backed away, the artifact's energy surged, creating a vortex that engulfed the entire chamber. We were pulled into an abyss, lost to a realm of darkness and madness.
    ->END

=== hasty_documentation ===
We documented the chamber hurriedly but disturbed something in the process. The chamber's energy lashed out, enveloping us in a blinding light. When it faded, we were not in the colony anymore, but in a place beyond our understanding.
    ->END

=== logbook_analysis ===
The logbook revealed a descent into madness and obsession. The researchers had uncovered something beyond human comprehension – a gateway to other realms, which they had unwittingly opened.

* [Decide to close the gateway]
    We knew we had to close the gateway. It was the only way to prevent further horrors.
    -> closing_gateway
* [Leave the gateway and evacuate the colony]
    The risk was too great. We decided to evacuate and report our findings to the agency.
    -> evacuation_decision

=== closing_gateway ===
Using the information from the logbook, we initiated the closure sequence. The ground shook as the gateway sealed, a sigh echoing through the air. We had prevented a catastrophe, but the cost was immeasurable.
    ->END

=== evacuation_decision ===
We quickly evacuated the colony, the haunting memories of what we discovered lingering in our minds. We had survived, but the mystery remained, a lurking threat in the shadows of space.
->END

=== notes_investigation ===
* [Investigate the notes further]
    Curiosity piqued, I delved deeper into the notes, trying to piece together the story they told.
    -> delve_into_notes

=== delve_into_notes ===
The notes were frantic scribbles, filled with references to otherworldly visions and whispers from the void. It became clear that the colony's inhabitants had encountered something beyond their understanding, something that had driven them to madness.

* [Try to rationalize the notes' content]
    I attempted to find a logical explanation for the notes, hoping to separate fact from deranged fiction.
    -> rationalize_notes
* [Share the notes with the team for further insights]
    Feeling overwhelmed, I decided to share the notes with the team, hoping for additional insights.
    -> team_discussion

=== rationalize_notes ===
Despite my efforts, the lines between reality and madness blurred. The notes spoke of a hidden truth, a cosmic horror that lay waiting in the shadows of the colony.

* [Continue exploring the colony for more clues]
    Determined to uncover the truth, I resolved to continue exploring the colony.
    -> further_exploration
* [Decide to evacuate and report the findings]
    The risk of delving deeper seemed too great. I chose to evacuate and report our findings to the agency.
    -> evacuation_decision

=== team_discussion ===
The team was equally disturbed by the notes. We debated their meaning, wondering if we were dealing with a scientific anomaly or something far more sinister.

* [Organize a search party to investigate specific areas mentioned in the notes]
    We formed a search party to investigate the areas mentioned in the notes.
    -> search_party
* [Decide to leave the colony, considering the risks too high]
    The potential dangers seemed too great. We unanimously decided to leave the colony.
    -> immediate_evacuation

=== immediate_evacuation ===
* [Decide to leave the colony, considering the risks too high]
    The potential dangers seemed too great. We unanimously decided to leave the colony.
    -> evacuation_doom

=== evacuation_doom ===
As we hurried to our ship, an eerie calm settled over the colony. The sense of being watched intensified, and shadows seemed to move just beyond our field of vision.

* [Quickly board the ship and launch]
    We wasted no time in boarding the ship and initiating the launch sequence, eager to put as much distance as possible between us and the colony.
    -> hasty_departure
* [Perform a final sweep for any missed clues or personnel]
    Despite our decision to leave, we conducted a final sweep of the colony to ensure nothing was overlooked.
    -> final_sweep

=== hasty_departure ===
As our ship ascended, a sudden force gripped it, halting our escape. The colony below us seemed to warp and twist, and an unknown energy surged towards us, engulfing the ship in darkness.
    ->END

=== final_sweep ===
During our final sweep, we stumbled upon a hidden room. Drawn by an inexplicable curiosity, we entered. The door shut behind us, and the room began to pulsate with a sinister energy.

* [Try to force the door open]
    In a panic, we tried to force the door open, only to find it unyielding as the room's energy intensified, consuming us.
    -> trapped_in_room
* [Accept your fate and explore the room]
    Resigned to our fate, we explored the room, finding relics of an ancient, otherworldly civilization just as reality around us began to collapse.
    -> reality_collapse

=== trapped_in_room ===
Trapped, we were subjected to terrifying visions and whispers from beyond. One by one, we lost our grip on sanity, consumed by the darkness of the room.
    ->END

=== reality_collapse ===
As we accepted our fate and examined the artifacts, the room's energy reached a crescendo. The walls of reality crumbled, and we were pulled into an abyss beyond time and space.
    ->END

=== search_party ===
* [Organize a search party to investigate specific areas mentioned in the notes]
    We formed a search party to investigate the areas mentioned in the notes.
    -> targeted_exploration

=== targeted_exploration ===
The notes led us to remote and eerie parts of the colony. Each location seemed steeped in an otherworldly presence, the air thick with a sense of dread.

* [Explore the abandoned research facility]
    The notes repeatedly referenced a research facility, abandoned in haste.
    -> facility_investigation
* [Investigate the underground tunnels]
    A network of tunnels beneath the colony was mentioned as a site of strange occurrences.
    -> tunnel_exploration

=== facility_investigation ===
The facility was a labyrinth of darkened corridors and forsaken labs. In the central lab, we discovered a device, its purpose obscure but ominous.

* [Activate the device out of curiosity]
    Despite the risks, curiosity drove us to activate the device, unleashing an energy that we could neither comprehend nor contain.
    -> device_activation_catastrophe
* [Leave the device untouched and document the findings]
    Sensing the danger, we chose not to interact with the device, but its mere presence seemed to awaken something sinister.
    -> ominous_presence

=== tunnel_exploration ===
In the tunnels, the air grew colder, and whispers echoed off the walls. We stumbled upon ancient symbols, their meanings unknown yet unsettling.

* [Follow the symbols deeper into the tunnels]
    Compelled by the symbols, we ventured deeper, unaware of the horrors that awaited us.
    -> deep_tunnel_horror
* [Retreat from the tunnels and seal them]
    Fearing what lay ahead, we decided to retreat and seal the tunnels, but the darkness followed us out.
    -> darkness_unleashed

=== device_activation_catastrophe ===
The device's activation was our undoing. Reality around us began to fracture, and we were consumed by a blinding void, our existence erased from the fabric of the cosmos.
    ->END

=== ominous_presence ===
Our decision to leave the device undisturbed didn't prevent the awakening of what it guarded. Shadows began to move with a life of their own, and we were hunted by an unseen, malevolent force.
    ->END

=== deep_tunnel_horror ===
Deeper in the tunnels, we encountered entities that defied explanation, their forms a blasphemy to human reason. We were lost to the madness, our screams echoing in the endless dark.
    ->END

=== darkness_unleashed ===
Our attempt to seal the tunnels was futile. The darkness spilled forth, consuming not just the colony but our very minds, leaving us as empty husks wandering in an eternal night.
    ->END

=== further_exploration ===
As we delved deeper into the colony, the atmosphere grew more oppressive. Shadows seemed to move in the corners of our eyes, and an inexplicable chill filled the air. 

* [Investigate the colony's restricted area]
    The notes had mentioned a restricted area, which now seemed like the key to understanding the colony's fate.
    -> restricted_area_exploration
* [Return to the ship for additional equipment]
    Feeling unprepared for what we might encounter, I decided to return to the ship for additional equipment.
    -> equipment_retrieval

=== equipment_retrieval ===
* [Return to the ship for additional equipment]
    Feeling unprepared for what we might encounter, I decided to return to the ship for additional equipment.
    -> ship_return

=== ship_return ===
As we made our way back to the ship, an unsettling silence enveloped the colony. The sense of being watched grew stronger with each step.

* [Hurry to the ship to gather equipment]
    We quickened our pace, eager to equip ourselves for whatever lay ahead.
    -> hurried_preparation
* [Investigate the strange silence en route]
    The eerie quiet was disconcerting. I decided to investigate its source as we moved.
    -> silence_investigation

=== hurried_preparation ===
We reached the ship and began to gather equipment. As we prepared, the ship's systems flickered erratically, and a deep hum resonated through the hull.

* [Attempt to fix the ship's systems]
    Concerned about the ship's functionality, I attempted to fix the systems.
    -> system_repair_attempt
* [Ignore the malfunctions and focus on the mission]
    We decided to ignore the malfunctions, focusing instead on our mission in the colony.
    -> mission_focus_continuation

=== silence_investigation ===
Our investigation of the silence led us to a section of the colony where the air felt denser, charged with an unseen force. Suddenly, the walls began to warp, distorting reality around us.

* [Try to escape the distorted area]
    Realizing the danger, we attempted to escape the rapidly changing environment.
    -> escape_attempt
* [Stay and study the phenomenon]
    Fascinated by this anomaly, we chose to stay and study the phenomenon, despite the risks.
    -> phenomenon_study

=== system_repair_attempt ===
As I worked on the systems, an unknown energy surged through the ship, engulfing us in an otherworldly light. We found ourselves transported to a realm beyond comprehension, our fate sealed.
    ->END

=== mission_focus_continuation ===
Ignoring the ship's malfunctions proved to be our undoing. As we disembarked, the ship's systems failed entirely, stranding us in the colony with an ominous presence closing in.
    ->END

=== escape_attempt ===
Our escape was futile. The warped reality enveloped us, pulling us into a vortex of madness. We were lost to a world where the boundaries of time and space ceased to exist.
    ->END

=== phenomenon_study ===
Our study of the phenomenon led us deeper into the unknown. We became entangled in a web of cosmic horror, our minds unraveling under the weight of truths too terrible to bear.
    ->END

=== restricted_area_exploration ===
In the restricted area, we found a sealed chamber. Its door was marked with the same arcane symbols I had seen before. Inside, we discovered the heart of the colony's nightmare.

* [Attempt to seal the chamber]
    Realizing the danger it posed, we attempted to seal the chamber, hoping to contain whatever had been unleashed.
    -> sealing_the_chamber
* [Document the chamber and leave it untouched]
    We decided not to interfere, documenting the chamber's contents instead for future investigation.
    -> documenting_discovery

=== sealing_the_chamber ===
We managed to seal the chamber, but not without cost. The air grew heavy, and a sense of unease lingered. We had stopped a catastrophe, but the shadows of what we witnessed would follow us forever.
    ->END

=== documenting_discovery ===
Documenting the chamber, we left it as we found it. The mystery remained, a haunting reminder of our encounter with the unknown. We departed the colony, our report a warning for those who might follow.
    ->END
    
=== team_briefing ===
* [Report your findings to the team]
    Feeling the urgency of our mission, I gathered the notes to share with the team.
    -> collective_analysis

=== collective_analysis ===
With the team gathered, I presented the notes. They were filled with frantic scribblings about strange phenomena, otherworldly presences, and a creeping madness that seemed to have overtaken the colony's inhabitants.

* [Suggest further investigation based on the notes]
    "We need to investigate these leads," I proposed, determined to uncover the truth behind these disturbing accounts.
    -> further_investigation_decision
* [Advocate for an immediate evacuation]
    "This is beyond our scope. We should evacuate and report back," I urged, feeling the weight of danger in the notes.
    -> evacuation_proposal

=== further_investigation_decision ===
The team agreed to delve deeper into the colony's mysteries, each of us aware of the potential risks. We split into groups, aiming to cover more ground.

* [Explore the area mentioned most frequently in the notes]
    We focused on an area repeatedly mentioned in the notes, hoping it held the key to understanding the colony's fate.
    -> key_area_exploration
* [Return to the ship for additional equipment and backup]
    Deciding to be better prepared, we headed back to the ship to gear up and possibly call for backup.
    -> ship_return_for_equipment

=== ship_return_for_equipment ===
* [Return to the ship for additional equipment and backup]
    Deciding to be better prepared, we headed back to the ship to gear up and possibly call for backup.
    -> ship_encounter

=== ship_encounter ===
Upon reaching the ship, we found it had been overtaken by an inexplicable phenomenon. The ship's structure seemed altered, as if warped by some otherworldly force.

* [Attempt to enter the ship and retrieve equipment]
    Despite the ship's altered state, we attempted to enter to retrieve our equipment and contact help.
    -> ship_entry
* [Decide to leave the ship and return to the colony]
    The ship's strange condition made us reconsider. We decided to return to the colony and use what resources we had.
    -> return_to_colony

=== ship_entry ===
Inside the ship, the corridors twisted unnaturally, and the air was filled with a chorus of whispers. The deeper we went, the more the ship seemed to be alive, its walls pulsating with a sinister energy.

* [Continue deeper into the ship]
    Driven by a need to understand, we continued deeper into the ship, despite the growing horrors.
    -> deeper_into_ship
* [Retreat and escape the ship]
    Overwhelmed by fear, we attempted to retreat and escape the ship's nightmarish transformation.
    -> ship_escape_attempt

=== deeper_into_ship ===
The further we ventured, the more we realized the ship was no longer a vessel but a gateway. A gateway to a realm of cosmic horror that now claimed us as its own.
    ->END

=== ship_escape_attempt ===
Our escape was thwarted as the ship seemed to fold in on itself. Corridors twisted, leading us back to the heart of the transformation, where we were swallowed by the darkness.
    ->END

=== return_to_colony ===
As we left the ship, it began to disintegrate, dissolving into an ethereal mist. Returning to the colony, we found it too had succumbed to the same fate, leaving us stranded in a world transformed.

* [Search for a place of safety within the transformed colony]
    We searched for a haven within the altered colony, hoping to find some refuge.
    -> search_for_refuge
* [Accept the inevitable and succumb to the transformation]
    Realizing the futility of resistance, we accepted our fate, succumbing to the transformation.
    -> acceptance_of_fate

=== search_for_refuge ===
Our search was in vain. The colony, now a labyrinth of impossible geometry, offered no sanctuary. One by one, we were lost to its endless maze, our screams echoing in the void.
    ->END

=== acceptance_of_fate ===
In our acceptance, the boundaries between us and the colony blurred. We became part of its otherworldly landscape, our identities merging with the cosmic horror that had overtaken everything.
    ->END

=== evacuation_proposal ===
The team was divided, but the sense of an impending threat swayed the majority. We decided to evacuate the colony and report our findings from a safe distance.

* [Organize an orderly evacuation]
    We moved quickly to organize an orderly evacuation, ensuring no area was left unchecked as we left.
    -> orderly_evacuation
* [Leave immediately, prioritizing crew safety]
    The urgency was palpable; we prioritized immediate departure, foregoing further checks.
    -> immediate_departure
=== orderly_evacuation ===
* [Organize an orderly evacuation]
    We moved quickly to organize an orderly evacuation, ensuring no area was left unchecked as we left.
    -> evacuation_gone_wrong

=== evacuation_gone_wrong ===
As we proceeded with the evacuation, an unsettling silence fell over the colony. The sensation of being watched grew stronger with each passing moment.

* [Hasten the evacuation process]
    Feeling the urgency, we hastened our efforts, aiming to leave the colony as quickly as possible.
    -> hasty_exit
* [Continue the thorough check despite the growing dread]
    Despite the unnerving atmosphere, we continued our thorough check of the colony.
    -> thorough_check_dread

=== hasty_exit ===
In our rush to evacuate, we missed signs of an impending catastrophe. As our ship ascended, a monstrous entity emerged from the depths of the colony, its tentacles reaching towards us.
    ->END

=== thorough_check_dread ===
Our thoroughness became our downfall. In the depths of the colony, we stumbled upon a chamber where reality itself seemed to unravel. The chamber's influence spread rapidly, consuming the entire colony and us with it.
    ->END

=== evacuation_desperation ===
As we prepared to leave, the colony's systems began to malfunction, trapping us. The walls echoed with otherworldly whispers, and shadowy figures lurked at the edge of our vision.

* [Attempt to override the systems and escape]
    Desperate, we tried to override the failing systems to make our escape.
    -> override_attempt
* [Accept the inevitable and face the darkness]
    Overwhelmed by despair, we accepted our fate, facing the encroaching darkness together.
    -> fate

=== override_attempt ===
Our attempts to override the systems only hastened the colony's descent into chaos. The colony collapsed around us, trapping us in its ruins forever.
    ->END

=== fate ===
In accepting our fate, we stood together as the darkness enveloped us. The last thing we heard were the echoes of a cosmic entity, awakening from its ancient slumber.
    ->END

=== key_area_exploration ===
The area was eerily silent, with signs of abrupt abandonment. Here, we found the epicenter of the colony's descent into madness: a lab where the boundary between dimensions had been breached.

* [Attempt to close the dimensional rift]
    Understanding the gravity of our discovery, we attempted to close the rift using the lab's equipment.
    -> rift_closing
* [Document the site and retreat to report]
    The risk was too high. We documented the site thoroughly and retreated to report our findings.
    -> site_documentation

=== rift_closing ===
With trembling hands, we activated the closure sequence. The air shimmered as the rift sealed, and a wave of relief washed over us. We had averted a disaster, but the memory of what we saw would haunt us.
    ->END

=== site_documentation ===
We documented the anomaly and left the lab, the images of that otherworldly breach etched into our minds. As we departed, we knew that we had left behind a mystery that others would have to solve.
    ->END

=== final_decision ===
* [Continue to play along with the mission]
    I forced a mask of normality, joining the team as we prepared to disembark.
    -> madness

=== madness ===
As we explored the desolate corridors of the Saturn colony, the whispers in my head grew louder, more insistent. The team remained unaware of the sinister undercurrent that seemed to permeate the air.

* [Investigate the colony's central hub]
    Hoping to find some answers, I led the way to the central hub, the whispers guiding my steps.
    -> hub_investigation
* [Suggest splitting up to cover more ground]
    Concealing my true intent, I suggested we split up, secretly seeking solitude to commune with the voices.
    -> splitting_up

=== hub_investigation ===
In the central hub, amidst the technological relics of a bygone era, I found an ancient artifact. The whispers crescendoed as I approached it, urging me to interact with it.

* [Activate the artifact]
    I was compelled to activate the artifact, drawn in by the alien whispers promising enlightenment.
    -> artifact_activation
* [Resist the whispers and leave the artifact]
    A moment of clarity broke through the madness, urging me to leave the artifact untouched.
    -> clarity_moment

=== artifact_activation ===
As I activated the artifact, reality warped around me. The colony and my team faded into insignificance. I was transported to a realm of unspeakable horror, my mind fracturing under the weight of ancient, cosmic truths.
    ->END

=== clarity_moment ===
Shaken, I stepped back from the artifact. I realized that I needed to warn the team, to escape this place before it was too late.

* [Hurry to find and warn the team]
    Driven by a desperate need to save my colleagues, I rushed to find them.
    -> team_warning
* [Decide to leave immediately, abandoning the mission]
    The risk was too great. I chose to evacuate immediately, leaving the colony's horrors behind.
    -> immediate_evacuation
    
=== team_warning ===
* [Hurry to find and warn the team]
    Driven by a desperate need to save my colleagues, I rushed to find them.
    -> desperate_warning

=== desperate_warning ===
I found the team in the central hub, unaware of the imminent danger. As I began to warn them, a sudden change occurred.

* [Try to evacuate the team immediately]
    Realizing the urgency, I tried to lead the team to an immediate evacuation.
    -> evacuation_attempt
* [Explain the full extent of the danger]
    I attempted to explain the full extent of the danger we faced, hoping to persuade them to leave.
    -> detailed_explanation

=== evacuation_attempt ===
Our attempt to evacuate was cut short. The colony itself seemed to turn against us, corridors twisting, and shadows creeping. We were trapped in an ever-changing labyrinth, our fate sealed.
    ->END

=== detailed_explanation ===
As I explained the danger, an overwhelming presence filled the room. The air grew thick, and the shadows around us began to move, taking on forms of unspeakable horror. Our understanding came too late.
    ->END

=== warning_ignored ===
Despite my warnings, the team was skeptical, choosing to continue their work. As they dismissed my concerns, the very fabric of the colony began to unravel, a tangible darkness enveloping us all.

* [Attempt to fight against the darkness]
    Refusing to give in, I attempted to fight against the encroaching darkness.
    -> futile_resistance
* [Succumb to the inevitable]
    Realizing the futility of resistance, I succumbed to the inevitable, letting the darkness consume me.
    -> acceptance

=== futile_resistance ===
My efforts were in vain. The darkness was relentless, consuming everything in its path. One by one, my colleagues disappeared into the void, and soon, I followed.
    ->END

=== acceptance ===
In accepting our fate, we stood together as the darkness enveloped us. There was no escape, only the cold embrace of an unknown end.
    ->END

=== splitting_up ===
Alone, the voices became my only companions, guiding me through the forsaken colony. In an abandoned laboratory, I found notes that echoed the whispers in my head.

* [Embrace the whispers and follow their guidance]
    Surrendering to the voices, I followed their guidance deeper into the abyss of madness.
    -> embrace_whispers
* [Fight against the voices and try to rejoin the team]
    A part of me fought for sanity, urging me to find my team and escape the growing darkness.
    -> rejoin_team_effort

=== embrace_whispers ===
The voices led me to a hidden chamber where reality itself seemed fractured. I stepped into the void, my identity dissolving as I became one with the ancient, cosmic horrors.
    ->END

=== rejoin_team_effort ===
Struggling against the encroaching madness, I searched for my team. But it was too late; I could no longer distinguish reality from the nightmarish visions that plagued me.
    ->END

=== split_up_decision ===
* [Suggest splitting up to cover more ground]
    "Let's split up. We can cover more ground that way," I suggested to the team.
    -> individual_exploration

=== individual_exploration ===
The team agreed, albeit reluctantly. We each set off in different directions, the eerie silence of the colony amplifying the sense of isolation.

* [Head towards the research labs]
    I decided to investigate the research labs, hoping to find clues about the colony's fate.
    -> lab_investigation
* [Explore the residential area]
    Seeking more personal insights, I ventured into the residential area.
    -> residential_exploration

=== lab_investigation ===
In the labs, I found disturbing experiments and notes on otherworldly entities. A sense of dread grew as I realized the extent of the researchers' meddling with forces they didn't understand.

* [Continue exploring the lab]
    Compelled by a need to understand, I delved deeper into the lab's secrets.
    -> deeper_lab_exploration
* [Leave the lab and look for the team]
    Feeling overwhelmed, I decided to leave and find my team, needing their support.
    -> search_for_team
=== search_for_team ===
* [Leave the lab and look for the team]
    Feeling overwhelmed, I decided to leave and find my team, needing their support.
    -> team_search

=== team_search ===
As I wandered the desolate corridors of the colony in search of my team, a creeping sense of dread grew within me. The silence was oppressive, punctuated only by my own footsteps.

* [Call out for the team]
    Hoping for a response, I called out for my team members, my voice echoing through the empty halls.
    -> calling_outcome
* [Continue the search in silence]
    I chose to continue my search in silence, wary of attracting unwanted attention.
    -> silent_search

=== calling_outcome ===
My calls seemed to awaken something in the depths of the colony. Shadows began to stir, and eerie whispers filled the air. The team never answered; instead, I was met by something far more sinister.
    ->END

=== silent_search ===
In my silent search, the colony's atmosphere grew increasingly oppressive. I began to see fleeting shadows and hear whispers just beyond my comprehension. Madness crept upon me, and soon I couldn't tell reality from illusion.
    ->END

=== overwhelming_isolation ===
The longer I searched, the more I felt the weight of isolation. The colony seemed to shift around me, the walls closing in. Reality began to warp, and a sensation of being watched grew stronger.

* [Continue searching, despite the growing dread]
    Despite the terror, I pressed on, determined to find my team.
    -> relentless_search
* [Give in to the fear and hide]
    Overcome by fear, I found a hiding place, hoping to escape the unseen eyes.
    -> futile_hiding

=== relentless_search ===
My relentless search led me deeper into the colony. Suddenly, the floor gave way beneath me, plunging me into darkness. I fell into an abyss, both literal and metaphorical, lost to the colony's secrets.
    ->END

=== futile_hiding ===
My attempt to hide was in vain. The walls around me began to pulsate with a life of their own, and whispers turned into screams. I was not alone; the horrors of the colony had found me.
    ->END

=== residential_exploration ===
The residential area was hauntingly silent. Personal belongings were left as if their owners would return any moment. Among them, I found diaries filled with accounts of nightmares and visions.

* [Read through the diaries]
    Hoping to understand the residents' experiences, I began reading the diaries.
    -> diary_insights
* [Search for more physical clues]
    I set the diaries aside, searching for more tangible clues.
    -> physical_clue_search

=== deeper_lab_exploration ===
The deeper I went, the more the air felt charged with a malevolent presence. In the innermost lab, I found a device pulsating with an unnatural energy.

* [Activate the device]
    Driven by an inexplicable urge, I activated the device, unleashing energies beyond my comprehension.
    -> device_activation
* [Leave the device and run]
    Instinctively, I knew I should not tamper with it. I turned to run, hoping it was not too late.
    -> desperate_escape

=== device_activation ===
The device's activation tore through the fabric of reality. Visions of otherworldly horrors flooded my mind as the lab, the colony, and my very being began to unravel.
    -> END

=== desperate_escape ===
I ran, the sounds of the lab collapsing behind me. As I searched for the team, the colony seemed to distort around me, reality bending in impossible ways.
    ->END

=== deep_hub_exploration ===
* [Explore the deeper sections of the hub]
    Intrigued by what secrets the hub might hold, I ventured deeper into its bowels.
    -> hidden_chamber_discovery

=== hidden_chamber_discovery ===
The deeper I went, the more the atmosphere thickened with an ominous aura. In the heart of the hub, I stumbled upon a hidden chamber, its entrance marked with cryptic symbols.

* [Enter the chamber]
    Driven by an insatiable curiosity, I entered the chamber, unaware of the horrors that awaited.
    -> chamber_horror
* [Attempt to seal the chamber]
    Sensing a malevolent presence, I attempted to seal the chamber, hoping to contain whatever lay within.
    -> sealing_catastrophe

=== chamber_horror ===
Inside the chamber, I found a grotesque tableau of otherworldly origin. As I gazed upon it, my mind began to fracture, unable to comprehend the eldritch truth before me.
    ->END

=== sealing_catastrophe ===
In my attempt to seal the chamber, I inadvertently triggered a mechanism. A howl echoed through the hub as a dark energy was unleashed, consuming everything in its path, including me.
    ->END
    
=== regroup_with_team ===
* [Leave the terminal and regroup with the team]
    Feeling a chill down my spine, I decided it was best to regroup with the team and share this information.
    -> team_encounter

=== team_encounter ===
As I made my way back to the team, the colony seemed to shift subtly around me. The walls whispered secrets in a language I almost understood. When I finally found my team, they were not as I left them.

* [Confront the team about their odd behavior]
    Noticing their strange demeanor, I confronted them, seeking answers.
    -> confrontation_revelation
* [Observe the team silently, trying to understand the change]
    I remained silent, observing the team's odd behavior, trying to decipher the change.
    -> silent_observation

=== confrontation_revelation ===
My questions were met with vacant stares and disjointed mumblings. It became horrifyingly clear that the team had succumbed to the same madness that plagued the colony.
    ->END

=== silent_observation ===
As I watched in silence, the team's behavior grew increasingly erratic. Their speech was laced with references to otherworldly entities and impending doom. I realized too late that they were beyond help.
    ->END
    
=== broader_inspection ===
* [Investigate other technical areas of the colony]
    We chose to broaden our inspection to other technical areas, hoping to find more answers.
    -> technical_areas_exploration

=== technical_areas_exploration ===
Our search led us to various parts of the colony, each echoing with the remnants of its past. The air was thick with a sense of foreboding, as if the very walls were impregnated with unseen dread.

* [Examine the power distribution hub]
    The power hub, central to the colony's operation, seemed an ideal place to start.
    -> power_hub_investigation
* [Inspect the environmental control systems]
    Understanding the environmental systems might offer clues about the colony's demise.
    -> environmental_systems_inquiry

=== power_hub_investigation ===
In the power hub, we found more than just generators and circuits. There were signs of tampering, unnatural alterations that hinted at an attempt to harness an unknown energy.

* [Attempt to reverse the alterations]
    Believing we could undo the tampering, we attempted to reverse the modifications.
    -> reversal_attempt
* [Leave the hub and report the findings]
    The alterations were beyond our understanding. We decided to leave and report our findings.
    -> hub_departure

=== environmental_systems_inquiry ===
The environmental control systems were erratic, displaying readings that defied logic. The screens flickered with images of otherworldly landscapes, pulling us into their hypnotic gaze.

* [Try to shut down the systems]
    We attempted to shut down the systems, hoping to stop the disturbing displays.
    -> shutdown_attempt
* [Document the phenomena and leave]
    Realizing the danger, we documented the phenomena and quickly left the area.
    -> documentation_escape

=== reversal_attempt ===
Our efforts to reverse the alterations only worsened the situation. The energy within the hub surged uncontrollably, enveloping us in a blinding light. When it cleared, we were no longer in the colony – or our known reality.
    ->END

=== hub_departure ===
As we left the hub, the alterations we had witnessed began to spread throughout the colony. We watched in horror as the fabric of reality around us started to unravel.
    ->END

=== shutdown_attempt ===
Our attempt to shut down the systems backfired. The images on the screens became reality, the otherworldly landscapes materializing around us, trapping us in a world not our own.
    ->END

=== documentation_escape ===
We documented what we could and fled. However, the images we saw haunted us, eroding our grip on reality. One by one, we succumbed to madness, unable to escape the horrors we had witnessed.
    ->END

=== consult_jean ===
* [Consult with Jean about the findings]
    Feeling out of my depth, I suggested consulting Jean about the data.
    -> jean_confession

=== jean_confession ===
We found Jean visibly shaken. He looked over our data and whispered, "We've delved too deep. There's no turning back from what has been unleashed."

* [Insist on an immediate evacuation]
    Sensing the gravity in Jean's words, I urged the team to evacuate without delay.
    -> hurried_escape
* [Express skepticism and push for further investigation]
    I was skeptical of Jean's ominous tone and pushed for further investigation.
    -> investigative_peril

=== hurried_escape ===
Our escape was marked by an oppressive silence. As the colony faded into the distance, a lingering dread clung to us. We had survived, but the shadow of what we fled haunted our every moment.
    ->END

=== investigative_peril ===
Ignoring Jean's warnings, we pressed on. Our investigation led us into the depths of the colony, where we faced unspeakable horrors. None of us returned, lost to the dark secrets we unearthed.
    ->END

=== jean_confession_alternate ===
Jean's demeanor unnerved us. As he recounted his own theories about the findings, the room grew colder, shadows stretching unnaturally.

* [Confront Jean and demand clarity]
    I confronted Jean, demanding clearer answers.
    -> confrontation_fallout
* [Decide to back off and regroup with the team]
    Unsettled by Jean's state, I chose to regroup with the team to discuss our next steps.
    -> team_regathering

=== confrontation_fallout ===
Jean's response was fragmented, filled with cryptic references to other dimensions and ancient entities. As he spoke, reality around us began to distort, a clear sign we were in imminent danger.
    ->END

=== team_regathering ===
As the team discussed our findings, a sense of unease permeated the air. Unseen forces seemed to be closing in on us, a feeling that we were mere pawns in a larger, malevolent game.

* [Push for immediate evacuation]
    The oppressive atmosphere led us to choose immediate evacuation, prioritizing our safety.
    -> evacuation_under_duress
* [Decide to stay and confront the unknown]
    Driven by a determination to confront whatever was manipulating us, we chose to stay.
    -> confrontation_with_the_unknown

=== evacuation_under_duress ===
We evacuated under a cloud of unspoken terror. Safe but mentally scarred, we knew that whatever haunted the colony was still lurking out there, waiting.
    ->END

=== confrontation_with_the_unknown ===
Our decision to confront the unknown led us down a path of no return. One by one, we succumbed to the madness, our last moments a testament to the folly of challenging forces beyond our comprehension.
    ->END

=== diary_insights ===
* [Read through the diaries]
    Hoping to understand the residents' experiences, I began reading the diaries.
    -> descent

=== descent ===
The diaries were filled with accounts of nightmarish visions and encounters with indescribable entities. The more I read, the more the words seemed to twist and turn, seeping into my mind.

* [Continue reading, compelled by the accounts]
    Unable to tear myself away, I continued reading, drawn deeper into the residents' madness.
    -> consumed_by_madness
* [Attempt to stop reading and warn the team]
    Realizing the danger, I tried to stop reading and warn the team about the diaries' effect.
    -> warning_attempt

=== consumed_by_madness ===
The diaries' accounts consumed me. Visions plagued my sight, reality blending with the horrors described on the pages. I was lost, my mind succumbing to the same fate as the colony's residents.
    ->END

=== warning_attempt ===
As I tried to warn the team, my speech became disjointed, my thoughts echoing the diaries' madness. The team watched in horror as I descended into insanity, my warnings becoming incomprehensible rants.
    ->END

=== diary_curse ===
Carrying the diaries with me, I felt an increasing sense of paranoia. Shadows seemed to move on their own, and whispers echoed in the empty corridors. The colony itself felt alive, watching and waiting.

* [Try to destroy the diaries]
    In a desperate bid to rid myself of their influence, I attempted to destroy the diaries.
    -> destruction_futile
* [Hide the diaries and try to ignore their pull]
    Attempting to resist their pull, I hid the diaries away, hoping to escape their grip.
    -> futile

=== destruction_futile ===
My attempt to burn the diaries was futile. The flames refused to touch them, and instead, the words from the pages seemed to come alive, enveloping me in a world of horror.
    ->END

=== futile ===
Hiding the diaries did not stop their influence. The hallucinations grew stronger, and I could no longer distinguish reality from the nightmarish visions that the diaries conjured.
    ->END

=== physical_clue_search ===
* [Search for more physical clues]
    I set the diaries aside, searching for more tangible clues.
    -> tangible_discoveries

=== tangible_discoveries ===
My search led me through the abandoned homes, where I uncovered odd artifacts and strange machinery, their purposes unclear and unsettling.

* [Examine an odd artifact found in a home]
    Among the belongings, an unusual artifact caught my attention. It emanated a disturbing aura.
    -> artifact_examination
* [Investigate the strange machinery]
    I found bizarre machinery that appeared to be part of some unknown experiment.
    -> machinery_investigation

=== artifact_examination ===
The artifact was covered in cryptic symbols. As I touched it, a wave of nausea overcame me, and my vision blurred. Shadows seemed to leap from the artifact, enveloping the room.

* [Try to understand the artifact's purpose]
    Despite feeling unwell, I tried to decipher the artifact's purpose.
    -> artifact_understanding
* [Retreat from the artifact and seek help]
    Overwhelmed by its malevolent presence, I attempted to retreat and call for help.
    -> retreat_for_help

=== machinery_investigation ===
The machinery, intricate and otherworldly, hummed with an unnatural energy. As I inspected it, the hum intensified, resonating with a frequency that disoriented me.

* [Attempt to deactivate the machinery]
    Believing it to be dangerous, I tried to deactivate the machinery.
    -> deactivation_attempt
* [Leave the machinery and warn the team]
    Feeling an increasing sense of dread, I decided to leave immediately and warn the team.
    -> warning

=== artifact_understanding ===
My efforts to understand the artifact only drew me deeper into its curse. Visions of dark, twisted realms filled my mind, and I lost myself to the artifact's insidious influence.
    ->END

=== retreat_for_help ===
As I turned to leave, the artifact's energy burst forth, enveloping me in darkness. When I awoke, I was not in the colony anymore, but in a place of nightmares.
    ->END

=== deactivation_attempt ===
My attempt to deactivate the machinery triggered a catastrophic reaction. Energy surged wildly, causing the machinery to explode, and the last thing I remember was a blinding light and the sound of the colony crumbling.
    ->END

=== warning ===
Rushing to warn the team, I found that the humming energy from the machinery had spread throughout the colony. It was too late; we were trapped in a web of otherworldly energy, our fate sealed by the awakened forces.
    ->END
