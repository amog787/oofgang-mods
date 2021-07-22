.class public Lcom/android/settings/wallpaper/StyleSuggestionActivity;
.super Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;
.source "StyleSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 29
    invoke-static {p0}, Lcom/android/settings/wallpaper/StyleSuggestionActivityBase;->isWallpaperServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string v2, "theme_customization_overlay_packages"

    .line 33
    invoke-static {v0, v2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method
