.class public Lcom/android/server/pm/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/pm/IOpChinaGMSManager;


# static fields
.field private static final sis:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static tsu:Z

.field private static final you:Ljava/lang/String;


# instance fields
.field private zta:Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/android/server/pm/sis;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/sis;->you:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gsf"

    const-string v3, "com.google.android.syncadapters.contacts"

    const-string v4, "com.google.android.partnersetup"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/sis;->sis:Landroid/util/ArraySet;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/sis;->tsu:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGMSState()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/pm/sis;->tsu:Z

    return p0
.end method

.method public initInstance(Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/sis;->zta:Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;

    return-void
.end method

.method public setGMSEnabledSetting(Landroid/os/UserHandle;I)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/sis;->zta:Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    sget-object v0, Lcom/android/server/pm/sis;->sis:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/sis;->zta:Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;

    invoke-virtual {v2, v1, p2, p1}, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->setPackageState(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/sis;->zta:Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->finishSettingGMSPkgsState()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setGMSState(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/pm/sis;->tsu:Z

    return-void
.end method
