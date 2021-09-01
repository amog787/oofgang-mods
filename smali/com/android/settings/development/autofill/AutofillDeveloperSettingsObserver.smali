.class final Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutofillDeveloperSettingsObserver.java"


# instance fields
.field private final mChangeCallback:Ljava/lang/Runnable;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 37
    iput-object p2, p0, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->mChangeCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->mChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public register()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "autofill_logging_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "autofill_max_partitions_size"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "autofill_max_visible_datasets"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
