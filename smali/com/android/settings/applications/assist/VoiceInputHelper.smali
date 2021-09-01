.class public final Lcom/android/settings/applications/assist/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;,
        Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;,
        Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;
    }
.end annotation


# instance fields
.field final mAvailableInteractionInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableRecognition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableRecognizerInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableVoiceInteractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurrentRecognizer:Landroid/content/ComponentName;

.field mCurrentVoiceInteraction:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    .line 100
    iput-object p1, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableVoiceInteractions:Ljava/util/List;

    .line 105
    iget-object p1, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognition:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildUi()V
    .locals 13

    const-string v0, "error parsing recognition service meta-data"

    const-string v1, "VoiceInputHelper"

    .line 112
    iget-object v2, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_interaction_service"

    .line 112
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    goto :goto_0

    .line 117
    :cond_0
    iput-object v3, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    .line 120
    :goto_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 124
    iget-object v4, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableVoiceInteractions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_2

    .line 126
    iget-object v7, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableVoiceInteractions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 127
    new-instance v8, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v9, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v8, v9, v10}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 129
    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in VoiceInteractionService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VoiceInteractionService"

    .line 130
    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 135
    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    iget-object v11, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v9, Landroid/content/ComponentName;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 137
    invoke-virtual {v8}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "voice_recognition_service"

    .line 142
    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 145
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    goto :goto_3

    .line 147
    :cond_3
    iput-object v3, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    .line 152
    :goto_3
    iget-object v4, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognition:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v5

    :goto_4
    if-ge v6, v4, :cond_9

    .line 154
    iget-object v7, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognition:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 155
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 160
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 164
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.speech"

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_6

    .line 171
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .line 174
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 177
    :goto_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    goto :goto_5

    .line 181
    :cond_4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "recognition-service"

    .line 182
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 187
    sget-object v11, Lcom/android/internal/R$styleable;->RecognitionService:[I

    invoke-virtual {v8, v10, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 189
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_7

    .line 199
    :goto_6
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_a

    :catch_0
    move-exception v8

    goto :goto_7

    :catch_1
    move-exception v8

    goto :goto_8

    :catch_2
    move-exception v8

    goto :goto_9

    .line 183
    :cond_5
    :try_start_3
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "Meta-data does not start with recognition-service tag"

    invoke-direct {v8, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_3
    move-exception v8

    move-object v10, v3

    goto :goto_7

    :catch_4
    move-exception v8

    move-object v10, v3

    goto :goto_8

    :catch_5
    move-exception v8

    move-object v10, v3

    goto :goto_9

    .line 167
    :cond_6
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No android.speech meta-data for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_0
    move-exception p0

    goto :goto_b

    :catch_6
    move-exception v8

    move-object v9, v3

    move-object v10, v9

    .line 197
    :goto_7
    :try_start_4
    invoke-static {v1, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v9, :cond_7

    goto :goto_6

    :catch_7
    move-exception v8

    move-object v9, v3

    move-object v10, v9

    .line 195
    :goto_8
    invoke-static {v1, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v9, :cond_7

    goto :goto_6

    :catch_8
    move-exception v8

    move-object v9, v3

    move-object v10, v9

    .line 193
    :goto_9
    invoke-static {v1, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v9, :cond_7

    goto :goto_6

    .line 201
    :cond_7
    :goto_a
    iget-object v8, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    iget-object v11, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v9, v11, v7, v10}, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    move-object v3, v9

    :goto_b
    if-eqz v3, :cond_8

    .line 199
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 200
    :cond_8
    throw p0

    .line 204
    :cond_9
    iget-object p0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
