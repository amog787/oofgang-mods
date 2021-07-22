.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;I)V
    .locals 0

    .line 879
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 880
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 881
    iput p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    return-object p0
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 886
    monitor-enter p0

    .line 887
    :try_start_0
    iget p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    if-nez p1, :cond_0

    .line 888
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;

    invoke-direct {p2, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 895
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
