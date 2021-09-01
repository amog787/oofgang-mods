.class final enum Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;
.super Ljava/lang/Enum;
.source "EnabledNetworkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EnabledNetworks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

.field public static final enum PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 216
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 217
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_CDMA_CHOICES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 218
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 219
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 220
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_TDSCDMA_CHOICES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 221
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 222
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 223
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_EXCEPT_GSM_CHOICES"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 224
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_EXCEPT_LTE_CHOICES"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 225
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_4G_CHOICES"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 226
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "ENABLED_NETWORKS_CHOICES"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 227
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const-string v1, "PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    .line 215
    sget-object v14, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v14, v1, v2

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->$VALUES:[Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;
    .locals 1

    .line 215
    const-class v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;
    .locals 1

    .line 215
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->$VALUES:[Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    invoke-virtual {v0}, [Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$EnabledNetworks;

    return-object v0
.end method
