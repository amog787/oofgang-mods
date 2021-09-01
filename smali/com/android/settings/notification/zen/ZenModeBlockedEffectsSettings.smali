.class public Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeBlockedEffectsSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings$1;

    sget v1, Lcom/android/settings/R$xml;->zen_mode_block_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v8, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v4, "zen_effect_intent"

    const/4 v5, 0x4

    const/16 v6, 0x534

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v12, "zen_effect_light"

    const/16 v13, 0x8

    const/16 v14, 0x535

    const/4 v15, 0x0

    move-object v9, v1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v5, "zen_effect_peek"

    const/16 v6, 0x10

    const/16 v7, 0x536

    const/4 v8, 0x0

    move-object v2, v1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const/4 v2, 0x1

    new-array v15, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x100

    aput v3, v15, v2

    const-string/jumbo v12, "zen_effect_status"

    const/16 v13, 0x20

    const/16 v14, 0x537

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v5, "zen_effect_badge"

    const/16 v6, 0x40

    const/16 v7, 0x538

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v12, "zen_effect_ambient"

    const/16 v13, 0x80

    const/16 v14, 0x539

    const/4 v15, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;

    const-string/jumbo v5, "zen_effect_list"

    const/16 v6, 0x100

    const/16 v7, 0x53a

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x53b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 84
    sget p0, Lcom/android/settings/R$xml;->zen_mode_block_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
