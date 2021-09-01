.class public Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SafetyInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final INTENT_PROBE:Landroid/content/Intent;


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SHOW_SAFETY_AND_REGULATORY_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;->INTENT_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "safety_info"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 40
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/android/settings/deviceinfo/SafetyInfoPreferenceController;->INTENT_PROBE:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
