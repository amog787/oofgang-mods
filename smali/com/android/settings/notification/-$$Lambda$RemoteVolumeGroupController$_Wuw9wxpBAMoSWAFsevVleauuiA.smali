.class public final synthetic Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$_Wuw9wxpBAMoSWAFsevVleauuiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/RemoteVolumeGroupController;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/RemoteVolumeGroupController;Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$_Wuw9wxpBAMoSWAFsevVleauuiA;->f$0:Lcom/android/settings/notification/RemoteVolumeGroupController;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$_Wuw9wxpBAMoSWAFsevVleauuiA;->f$1:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$_Wuw9wxpBAMoSWAFsevVleauuiA;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$_Wuw9wxpBAMoSWAFsevVleauuiA;->f$0:Lcom/android/settings/notification/RemoteVolumeGroupController;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$_Wuw9wxpBAMoSWAFsevVleauuiA;->f$1:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$RemoteVolumeGroupController$_Wuw9wxpBAMoSWAFsevVleauuiA;->f$2:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/notification/RemoteVolumeGroupController;->lambda$onPreferenceChange$0$RemoteVolumeGroupController(Landroidx/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method
