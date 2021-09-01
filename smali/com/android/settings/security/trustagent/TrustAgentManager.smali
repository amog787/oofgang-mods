.class public Lcom/android/settings/security/trustagent/TrustAgentManager;
.super Ljava/lang/Object;
.source "TrustAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;
    }
.end annotation


# static fields
.field static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/security/trustagent/TrustAgentManager;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;
    .locals 8

    const-string p0, "TrustAgentManager"

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 153
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_c

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 158
    :cond_0
    new-instance v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    invoke-direct {v1}, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;-><init>()V

    .line 162
    :try_start_0
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v3, "android.service.trust.trustagent"

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    :try_start_1
    const-string p1, "Can\'t find android.service.trust.trustagent meta-data"

    .line 164
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 193
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-object v0

    .line 167
    :cond_2
    :try_start_2
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 168
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 170
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 173
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "trust-agent"

    .line 174
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string p1, "Meta-data does not start with trust-agent tag"

    .line 175
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 193
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    return-object v0

    .line 178
    :cond_5
    :try_start_3
    sget-object v4, Lcom/android/internal/R$styleable;->TrustAgent:[I

    .line 179
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    const/4 v3, 0x0

    .line 183
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    .line 184
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_6

    .line 193
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    move-object p1, v0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_3
    move-exception p1

    move-object v3, v0

    goto :goto_2

    :catch_4
    move-exception p1

    move-object v3, v0

    goto :goto_4

    :catch_5
    move-exception p1

    move-object v3, v0

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 194
    :cond_7
    throw p0

    :catch_6
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    :goto_2
    if-eqz v2, :cond_8

    .line 193
    :goto_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_6

    :catch_7
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    :goto_4
    if-eqz v2, :cond_8

    goto :goto_3

    :catch_8
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    :goto_5
    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    :goto_6
    if-eqz p1, :cond_9

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_9
    if-eqz v3, :cond_a

    const/16 p0, 0x2f

    .line 199
    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_a

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    if-nez v3, :cond_b

    goto :goto_7

    .line 203
    :cond_b
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_7
    iput-object v0, v1, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    return-object v1

    :cond_c
    :goto_8
    return-object v0
.end method


# virtual methods
.method public getActiveTrustAgentLabel(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p0

    .line 98
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 110
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    sget-object v4, Lcom/android/settings/security/trustagent/TrustAgentManager;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 116
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object p2

    const/16 v5, 0x10

    .line 118
    invoke-static {p1, v5, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 121
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 122
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 123
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0, v2, v4}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    move-result-object v5

    .line 128
    iget-object v6, v5, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 129
    invoke-virtual {p0, v4}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    .line 130
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v6, 0x0

    .line 134
    invoke-virtual {p0, v4}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v4

    .line 133
    invoke-virtual {v1, v6, v4}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    .line 135
    iput-object p1, v5, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 137
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 1

    if-eqz p1, :cond_1

    .line 147
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z
    .locals 1

    .line 83
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string p1, "android.permission.PROVIDE_TRUST_AGENT"

    .line 84
    invoke-virtual {p2, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping agent because package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not have permission "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrustAgentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
