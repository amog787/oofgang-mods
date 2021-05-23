.class public Lcom/android/server/wm/OPAppSwitchSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OPAppSwitchSettings$zta;,
        Lcom/android/server/wm/OPAppSwitchSettings$you;
    }
.end annotation


# static fields
.field private static final APP_SWITCH_CONFIG_DIR_PATH:Ljava/lang/String; = "data/oneplus/ads/appswitch/"

.field private static final APP_SWITCH_CONFIG_FILE_PATH:Ljava/lang/String; = "data/oneplus/ads/appswitch/sys_app_switch_config.xml"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OPAppSwitchSettings"


# instance fields
.field private mAppSwitchEnable:Z

.field private mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mFileObserverPolicy:Lcom/android/server/wm/OPAppSwitchSettings$zta;

.field private mListener:Lcom/android/server/wm/OPAppSwitchSettings$you;

.field private mMatchActivityDefaultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchAppDefaultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsFile:Ljava/io/File;

.field private mSettingsLock:Ljava/lang/Object;

.field private mStaticRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/OPAppSwitchRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I

.field mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/OPAppSwitchSettings$you;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mSettingsLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mAppSwitchEnable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mStaticRuleList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mBlackList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mMatchAppDefaultList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mMatchActivityDefaultList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mListener:Lcom/android/server/wm/OPAppSwitchSettings$you;

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/OPAppSwitchSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OPAppSwitchSettings;->readConfigFromFile(Z)V

    return-void
.end method

.method private createFile()V
    .locals 2

    new-instance p0, Ljava/io/File;

    const-string v0, "data/oneplus/ads/appswitch/"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "data/oneplus/ads/appswitch/sys_app_switch_config.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OPAppSwitchSettings"

    const-string v0, " init config dir error"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private getConfiguration(Lcom/android/server/wm/OPAppSwitchRuleInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "config"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OPAppSwitchSettings"

    const-string v2, "parsexml    getObject = config"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    iget-object p0, p1, Lcom/android/server/wm/OPAppSwitchRuleInfo;->config:Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-virtual {p0, v1, v2}, Lcom/oplus/app/OplusAppSwitchConfig;->addAppConfig(ILjava/util/List;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const-string v3, "type"

    invoke-direct {p0, v3}, Lcom/android/server/wm/OPAppSwitchSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v4, v3, :cond_3

    move v1, v4

    :cond_3
    const-string v3, "name"

    invoke-direct {p0, v3}, Lcom/android/server/wm/OPAppSwitchSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method private getRules()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "rule"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OPAppSwitchSettings"

    const-string v2, "parsexml getObject = rule"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->buildStaticRuleInfo(Landroid/content/Context;)Lcom/android/server/wm/OPAppSwitchRuleInfo;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v2}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->setStaticPackageAndObserver(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mStaticRuleList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    if-nez v2, :cond_3

    const-string v2, "pkg"

    invoke-direct {p0, v2}, Lcom/android/server/wm/OPAppSwitchSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/wm/OPAppSwitchSettings;->getConfiguration(Lcom/android/server/wm/OPAppSwitchRuleInfo;)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPAppSwitchSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsexml    key ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value ="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadRuleList()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wm/OPAppSwitchSettings;->reset()V

    new-instance v0, Ljava/io/File;

    const-string v1, "data/oneplus/ads/appswitch/sys_app_switch_config.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    const-string v2, "OPAppSwitchSettings"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " file = data/oneplus/ads/appswitch/sys_app_switch_config.xml exist = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "load file rule list"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wm/OPAppSwitchSettings;->parseXml(Ljava/io/File;)V

    goto :goto_0

    :cond_2
    const-string p0, "load file failed, file not found"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private parseXml(Ljava/io/File;)V
    .locals 10

    const-string v0, "version"

    const-string v1, "matchActivityDefault"

    const-string v2, "matchAppDefault"

    const-string v3, "blackItem"

    const-string v4, "close config file failed: "

    const-string v5, "OPAppSwitchSettings"

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    sget-boolean v8, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsexml     END_TAG---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v3}, Lcom/android/server/wm/OPAppSwitchSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mBlackList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-boolean v8, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsexml  blackItem START_ attr == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "parsexml  whileItem START_ attr == "

    if-eqz v8, :cond_6

    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/wm/OPAppSwitchSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mMatchAppDefaultList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v8, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-direct {p0, v1}, Lcom/android/server/wm/OPAppSwitchSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mMatchActivityDefaultList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-boolean v8, Lcom/android/server/wm/OPAppSwitchSettings;->DEBUG:Z

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget v9, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mVersion:I

    if-ge v8, v9, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "version downgraded mVersion = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,new version = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/OPAppSwitchSettings;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void

    :cond_9
    :try_start_4
    iput v8, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mVersion:I

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/android/server/wm/OPAppSwitchSettings;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void

    :cond_b
    :goto_3
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/wm/OPAppSwitchSettings;->getRules()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    :goto_4
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    move-object v6, v7

    goto/16 :goto_a

    :catch_3
    move-exception p0

    move-object v6, v7

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v6, v7

    goto :goto_6

    :catch_5
    move-exception p0

    move-object v6, v7

    goto :goto_7

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :catch_6
    move-exception p0

    :goto_5
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse xml config Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v6, :cond_d

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8

    :catch_8
    move-exception p0

    :goto_6
    :try_start_a
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse xml config XmlPullParserException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v6, :cond_d

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_9

    :catch_9
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8

    :catch_a
    move-exception p0

    :goto_7
    :try_start_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse xml config IOException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v6, :cond_d

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_9

    :catch_b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_9
    return-void

    :goto_a
    if-eqz v6, :cond_e

    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_b

    :catch_c
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_b
    throw p0
.end method

.method private readConfigFromFile(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OPAppSwitchSettings;->loadRuleList()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mListener:Lcom/android/server/wm/OPAppSwitchSettings$you;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/wm/OPAppSwitchSettings$you;->onConfigChanged()V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mMatchAppDefaultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mMatchActivityDefaultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mStaticRuleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public getBlackList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mBlackList:Ljava/util/List;

    return-object p0
.end method

.method public getConfigRuleInfos()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OPAppSwitchRuleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mStaticRuleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    iget-object v2, v1, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMatchActivityDefaultList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mMatchActivityDefaultList:Ljava/util/List;

    return-object p0
.end method

.method public getMatchAppDefaultList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mMatchAppDefaultList:Ljava/util/List;

    return-object p0
.end method

.method public init()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/OPAppSwitchSettings;->createFile()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/OPAppSwitchSettings;->readConfigFromFile(Z)V

    new-instance v0, Lcom/android/server/wm/OPAppSwitchSettings$zta;

    const-string v1, "data/oneplus/ads/appswitch/sys_app_switch_config.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/OPAppSwitchSettings$zta;-><init>(Lcom/android/server/wm/OPAppSwitchSettings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchSettings;->mFileObserverPolicy:Lcom/android/server/wm/OPAppSwitchSettings$zta;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method
