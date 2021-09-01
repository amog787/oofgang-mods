.class public final enum Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;
.super Ljava/lang/Enum;
.source "OPButtonsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

.field public static final enum BACK_SWITCH:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

.field public static final enum BASE:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

.field public static final enum FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

.field public static final enum HOME:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

.field public static final enum NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

.field public static final enum POWER:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

.field public static final enum POWER_HOME:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 120
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 121
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    const-string v1, "POWER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->POWER:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 122
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    const-string v1, "POWER_HOME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->POWER_HOME:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 123
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    const-string v1, "HOME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->HOME:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 124
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    const-string v1, "FOOT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 125
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    const-string v1, "BACK_SWITCH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->BACK_SWITCH:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 126
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    const-string v1, "BASE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->BASE:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 119
    sget-object v9, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    aput-object v9, v1, v2

    sget-object v2, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->POWER:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->POWER_HOME:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->HOME:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->BACK_SWITCH:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->$VALUES:[Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;
    .locals 1

    .line 119
    const-class v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;
    .locals 1

    .line 119
    sget-object v0, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->$VALUES:[Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual {v0}, [Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    return-object v0
.end method
