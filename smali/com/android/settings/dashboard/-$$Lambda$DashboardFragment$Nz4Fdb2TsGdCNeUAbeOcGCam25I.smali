.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$Nz4Fdb2TsGdCNeUAbeOcGCam25I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFragment;

.field public final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$Nz4Fdb2TsGdCNeUAbeOcGCam25I;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$Nz4Fdb2TsGdCNeUAbeOcGCam25I;->f$1:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$Nz4Fdb2TsGdCNeUAbeOcGCam25I;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$Nz4Fdb2TsGdCNeUAbeOcGCam25I;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Lcom/android/settings/dashboard/DynamicDataObserver;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onStart$6$DashboardFragment(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method
