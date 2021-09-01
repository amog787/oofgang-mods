.class Lcom/android/settings/wallpaper/WallpaperSuggestionActivity$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WallpaperSuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance p2, Lcom/android/settings/display/WallpaperPreferenceController;

    const-string v0, "dummy key"

    invoke-direct {p2, p1, v0}, Lcom/android/settings/display/WallpaperPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p2}, Lcom/android/settings/display/WallpaperPreferenceController;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 77
    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Lcom/android/settings/display/WallpaperPreferenceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    const-string p1, "android.intent.action.MAIN"

    .line 81
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const-string/jumbo p1, "wallpaper_type"

    .line 82
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 83
    invoke-virtual {p2}, Lcom/android/settings/display/WallpaperPreferenceController;->getKeywords()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 84
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
