.class public Lcom/android/settings/panel/MediaOutputGroupPanel;
.super Ljava/lang/Object;
.source "MediaOutputGroupPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mCallback:Lcom/android/settings/panel/PanelContentCallback;

.field private final mContext:Landroid/content/Context;

.field private mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/panel/MediaOutputGroupPanel;
    .locals 1

    .line 67
    new-instance v0, Lcom/android/settings/panel/MediaOutputGroupPanel;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/panel/MediaOutputGroupPanel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getHeaderIconIntent()Landroid/content/Intent;
    .locals 2

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.panel.action.MEDIA_OUTPUT"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mPackageName:Ljava/lang/String;

    const-string v1, "com.android.settings.panel.extra.PACKAGE_NAME"

    .line 118
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->ic_arrow_back:I

    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->setTint(I)Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x72b

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_GROUP_SLICE_URI:Landroid/net/Uri;

    .line 100
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mPackageName:Ljava/lang/String;

    const-string v2, "media_package_name"

    .line 102
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_GROUP_SLICE_URI:Landroid/net/Uri;

    .line 104
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->media_output_group_panel_single_device_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->media_output_group_panel_multiple_devices_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->media_output_group_panel_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onDeviceListUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    if-eqz p0, :cond_0

    .line 151
    invoke-interface {p0}, Lcom/android/settings/panel/PanelContentCallback;->onHeaderChanged()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    iput-object v0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 136
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    return-void
.end method

.method public registerCallback(Lcom/android/settings/panel/PanelContentCallback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/panel/MediaOutputGroupPanel;->mCallback:Lcom/android/settings/panel/PanelContentCallback;

    return-void
.end method
