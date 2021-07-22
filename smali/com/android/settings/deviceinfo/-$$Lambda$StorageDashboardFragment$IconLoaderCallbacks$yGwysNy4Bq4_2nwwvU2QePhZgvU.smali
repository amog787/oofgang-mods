.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$yGwysNy4Bq4_2nwwvU2QePhZgvU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$yGwysNy4Bq4_2nwwvU2QePhZgvU;->f$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    return-void
.end method


# virtual methods
.method public final getUserIcons()Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$yGwysNy4Bq4_2nwwvU2QePhZgvU;->f$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->lambda$onCreateLoader$0$StorageDashboardFragment$IconLoaderCallbacks()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method
