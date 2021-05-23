.class Lcom/android/server/engineer/you$you;
.super Lcom/android/server/engineer/cno$you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field private static final cjf:Ljava/lang/String; = "switchState"

.field private static final ear:Ljava/lang/String; = "activity_sw"

.field private static final fto:Ljava/lang/String; = "engineer_order_sw"

.field private static final hmo:Ljava/lang/String; = "shell_command_sw"

.field private static final ire:Ljava/lang/String; = "service_sw"

.field private static final lqr:Ljava/lang/String; = "reset_atm_sw"

.field private static final obl:Ljava/lang/String; = "order"

.field private static final oxb:Ljava/lang/String; = "switchName"

.field private static final ugm:Ljava/lang/String; = "packageName"

.field private static final vdb:Ljava/lang/String; = "className"

.field private static final zgw:Ljava/lang/String; = "command"


# instance fields
.field private final bio:Lcom/android/server/engineer/you$zta;

.field private bvj:Z

.field private final cno:Ljava/lang/String;

.field private dma:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gck:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic gwm:Lcom/android/server/engineer/you;

.field private ibl:Z

.field private igw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final kth:Ljava/lang/String;

.field private oif:Z

.field private qbh:Z

.field private final rtg:Ljava/lang/String;

.field private final sis:Ljava/lang/Object;

.field private final ssp:Ljava/lang/String;

.field private final tsu:Ljava/lang/String;

.field private wtn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private ywr:Z


# direct methods
.method constructor <init>(Lcom/android/server/engineer/you;Lcom/android/server/engineer/you$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->gwm:Lcom/android/server/engineer/you;

    invoke-direct {p0, p1}, Lcom/android/server/engineer/cno$you;-><init>(Lcom/android/server/engineer/cno;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->sis:Ljava/lang/Object;

    const-string p1, "switch"

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->tsu:Ljava/lang/String;

    const-string p1, "activity"

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->rtg:Ljava/lang/String;

    const-string p1, "service"

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->ssp:Ljava/lang/String;

    const-string p1, "shell_command"

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->cno:Ljava/lang/String;

    const-string p1, "engineer_order"

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->kth:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->igw:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->wtn:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->gck:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/you$you;->dma:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/engineer/you$you;->bio:Lcom/android/server/engineer/you$zta;

    return-void
.end method

.method private dma(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "packageName"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/engineer/you$you;->sis:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/engineer/you;->gwm()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseComponentName, packageName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", className = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private qbh(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "command"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/engineer/you$you;->sis:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/engineer/you;->gwm()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseShellCommand, command = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private ywr(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "order"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/engineer/you$you;->sis:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/engineer/you;->gwm()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseEngineerOrder, order = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method bio(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/engineer/you$you;->bvj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/you$you;->dma:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method gck()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/engineer/you$you;->ibl:Z

    return p0
.end method

.method igw(Landroid/content/ComponentName;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/engineer/you$you;->qbh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/you$you;->wtn:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-static {v0, p1}, Lcom/android/server/engineer/ssp;->qbh(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method kth(Landroid/content/ComponentName;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/engineer/you$you;->ywr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/you$you;->igw:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-static {v0, p1}, Lcom/android/server/engineer/ssp;->qbh(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public ssp(Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    iget-object v4, p0, Lcom/android/server/engineer/you$you;->sis:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/android/server/engineer/you$you;->igw:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/server/engineer/you$you;->wtn:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v0

    :goto_0
    const/4 v5, 0x1

    if-eq p1, v5, :cond_b

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    :try_start_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v7, "switch"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string p1, "switchName"

    invoke-interface {v2, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "switchState"

    invoke-interface {v2, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {}, Lcom/android/server/engineer/you;->gwm()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "parse switch %s = %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    aput-object v7, v6, v5

    invoke-static {v9, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "activity_sw"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/engineer/you$you;->ywr:Z

    goto/16 :goto_3

    :cond_2
    const-string v5, "service_sw"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/engineer/you$you;->qbh:Z

    goto :goto_3

    :cond_3
    const-string v5, "shell_command_sw"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/engineer/you$you;->oif:Z

    goto :goto_3

    :cond_4
    const-string v5, "engineer_order_sw"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/engineer/you$you;->bvj:Z

    goto :goto_3

    :cond_5
    const-string v5, "reset_atm_sw"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/engineer/you$you;->ibl:Z

    goto :goto_3

    :cond_6
    const-string v6, "activity"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object p1, p0, Lcom/android/server/engineer/you$you;->igw:Ljava/util/List;

    :goto_1
    invoke-direct {p0, v2, p1}, Lcom/android/server/engineer/you$you;->dma(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_7
    const-string v6, "service"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object p1, p0, Lcom/android/server/engineer/you$you;->wtn:Ljava/util/List;

    goto :goto_1

    :cond_8
    const-string v6, "shell_command"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object p1, p0, Lcom/android/server/engineer/you$you;->gck:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/android/server/engineer/you$you;->qbh(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto :goto_2

    :cond_9
    const-string v6, "engineer_order"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/engineer/you$you;->dma:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/android/server/engineer/you$you;->ywr(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto :goto_2

    :cond_a
    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    move-object v1, v3

    move v0, v4

    goto :goto_4

    :cond_b
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V

    goto :goto_5

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    move-object v1, v3

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p1

    :goto_4
    :try_start_6
    invoke-static {}, Lcom/android/server/engineer/you;->gwm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Got execption parsing permissions."

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    :cond_c
    move v4, v0

    :goto_5
    if-eqz v4, :cond_d

    iget-object p0, p0, Lcom/android/server/engineer/you$you;->bio:Lcom/android/server/engineer/you$zta;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/android/server/engineer/you$zta;->zta()V

    :cond_d
    return-void

    :goto_6
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    :cond_e
    throw p0
.end method

.method wtn(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/engineer/you$you;->oif:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/you$you;->gck:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method
