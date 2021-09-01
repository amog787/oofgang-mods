.class final Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPSilentMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSilentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrefSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSilentMode;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPSilentMode;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPSilentMode;

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 93
    invoke-static {}, Lcom/oneplus/settings/notification/OPSilentMode;->access$100()[Lcom/android/settings/notification/SettingPref;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 94
    invoke-virtual {v2}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPSilentMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSilentMode$PrefSettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPSilentMode;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSilentMode;->access$000(Lcom/oneplus/settings/notification/OPSilentMode;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/oneplus/settings/notification/OPSilentMode;->access$100()[Lcom/android/settings/notification/SettingPref;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 83
    invoke-virtual {v4}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
