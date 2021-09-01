.class public Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallEventReceiver.java"


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static sReceiver:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sLock:Ljava/lang/Object;

    return-void
.end method

.method static getNewId(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->getReceiver(Landroid/content/Context;)Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;->getNewId()I

    move-result p0

    return p0
.end method

.method private static getReceiver(Landroid/content/Context;)Lcom/oneplus/settings/packageuninstaller/EventResultPersister;
    .locals 2

    .line 37
    sget-object v0, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sReceiver:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    .line 40
    invoke-static {p0}, Lcom/oneplus/settings/packageuninstaller/TemporaryFileManager;->getUninstallStateFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/oneplus/settings/packageuninstaller/EventResultPersister;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sReceiver:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    .line 42
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    sget-object p0, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->sReceiver:Lcom/oneplus/settings/packageuninstaller/EventResultPersister;

    return-object p0

    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
