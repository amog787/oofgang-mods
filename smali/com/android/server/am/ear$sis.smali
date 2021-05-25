.class public Lcom/android/server/am/ear$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation


# static fields
.field private static you:Lcom/android/server/am/ear$sis; = null

.field public static final zta:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sis(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v0, 0x1

    const/16 v1, 0xc8

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/server/am/ear;->ssp(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method private static tsu()Lcom/android/server/am/ear$sis;
    .locals 1

    sget-object v0, Lcom/android/server/am/ear$sis;->you:Lcom/android/server/am/ear$sis;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/ear$sis;

    invoke-direct {v0}, Lcom/android/server/am/ear$sis;-><init>()V

    sput-object v0, Lcom/android/server/am/ear$sis;->you:Lcom/android/server/am/ear$sis;

    :cond_0
    sget-object v0, Lcom/android/server/am/ear$sis;->you:Lcom/android/server/am/ear$sis;

    return-object v0
.end method

.method static final you(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/android/server/am/ear$sis;->tsu()Lcom/android/server/am/ear$sis;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/server/am/ear$sis;->sis(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method static final zta(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    invoke-static {}, Lcom/android/server/am/ear;->rtg()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died but not restart......"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BFP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    invoke-static {}, Lcom/android/server/am/ear;->rtg()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3, p0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    iput-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_2
    invoke-static {}, Lcom/android/server/am/ear;->rtg()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-static {}, Lcom/android/server/am/ear;->rtg()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p0, :cond_3

    invoke-static {}, Lcom/android/server/am/ear;->rtg()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v1}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    invoke-static {}, Lcom/android/server/am/ear;->rtg()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
