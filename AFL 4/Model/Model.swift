import Foundation

struct Heroes: Codable {
    let status: Int
    let data: [Hero]
}
// MARK: - Hero
struct Hero: Codable {
    let uuid, displayName, description, developerName: String
    let characterTags: [String]?
    let displayIcon, displayIconSmall: String
    let bustPortrait, fullPortrait, fullPortraitV2: String?
    let killfeedPortrait: String
    let background: String?
    let backgroundGradientColors: [String]?
    let assetPath: String
    let isFullPortraitRightFacing, isPlayableCharacter, isAvailableForTest, isBaseContent: Bool
    let role: Role?
    let abilities: [Ability]
    let voiceLine: VoiceLine

    enum CodingKeys: String, CodingKey {
        case uuid, displayName
        case description = "description"
        case developerName, characterTags, displayIcon, displayIconSmall, bustPortrait, fullPortrait, fullPortraitV2, killfeedPortrait, background, backgroundGradientColors, assetPath, isFullPortraitRightFacing, isPlayableCharacter, isAvailableForTest, isBaseContent, role, abilities, voiceLine
    }
}

// MARK: - Ability
struct Ability: Codable {
    let slot: Slot
    let displayName, description: String
    let displayIcon: String?

    enum CodingKeys: String, CodingKey {
        case slot, displayName
        case description = "description"
        case displayIcon
    }
}

enum Slot: String, Codable {
    case ability1 = "Ability1"
    case ability2 = "Ability2"
    case grenade = "Grenade"
    case passive = "Passive"
    case ultimate = "Ultimate"
}

// MARK: - Role
struct Role: Codable {
    let uuid: String
    let displayName: DisplayName
    let description: String
    let displayIcon: String
    let assetPath: String

    enum CodingKeys: String, CodingKey {
        case uuid, displayName
        case description = "description"
        case displayIcon, assetPath
    }
}

enum DisplayName: String, Codable {
    case controller = "Controller"
    case duelist = "Duelist"
    case initiator = "Initiator"
    case sentinel = "Sentinel"
}

// MARK: - VoiceLine
struct VoiceLine: Codable {
    let minDuration, maxDuration: Double
    let mediaList: [MediaList]
}

// MARK: - MediaList
struct MediaList: Codable {
    let id: Int
    let wwise: String
    let wave: String
}


