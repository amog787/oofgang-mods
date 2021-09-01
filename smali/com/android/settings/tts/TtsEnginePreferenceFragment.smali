.class public Lcom/android/settings/tts/TtsEnginePreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "TtsEnginePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mPreviousEngine:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 221
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->tts_engine_picker:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 39
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 46
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;-><init>(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private displayDataAlert(Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Displaying data alert for :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsEnginePrefFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    .line 153
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->tts_engine_security_warning:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 155
    invoke-virtual {p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 154
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x104000a

    .line 157
    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    const/4 p1, 0x0

    .line 158
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$onRadioButtonConfirmed$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->setDefaultKey(Ljava/lang/String;)Z

    return-void
.end method

.method private shouldDisplayDataAlert(Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;)Z
    .locals 0

    .line 145
    invoke-virtual {p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;->isSystem()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 4

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating default synth to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsEnginePrefFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    const-string v0, "Shutting down current tts engine"

    .line 175
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating engine : Attempting to connect to engine: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    const-string p0, "Success"

    .line 190
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 120
    new-instance v3, Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;

    invoke-direct {v3, v2}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;-><init>(Landroid/speech/tts/TextToSpeech$EngineInfo;)V

    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEngineMap:Ljava/util/Map;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 141
    sget p0, Lcom/android/settings/R$xml;->tts_engine_picker:I

    return p0
.end method

.method public synthetic lambda$onRadioButtonConfirmed$0$TtsEnginePreferenceFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->lambda$onRadioButtonConfirmed$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEngineMap:Ljava/util/Map;

    .line 59
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method protected onRadioButtonConfirmed(Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEngineMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;

    .line 105
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->shouldDisplayDataAlert(Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lcom/android/settings/tts/-$$Lambda$TtsEnginePreferenceFragment$FMoEpZlbdu64aUolMsMWdHuqokg;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/tts/-$$Lambda$TtsEnginePreferenceFragment$FMoEpZlbdu64aUolMsMWdHuqokg;-><init>(Lcom/android/settings/tts/TtsEnginePreferenceFragment;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->displayDataAlert(Lcom/android/settings/tts/TtsEnginePreferenceFragment$EngineCandidateInfo;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->setDefaultKey(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public onUpdateEngine(I)V
    .locals 3

    const-string v0, "TtsEnginePrefFragment"

    if-nez p1, :cond_0

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating engine: Successfully bound to the engine: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 86
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object p0

    const-string v0, "tts_default_synth"

    .line 87
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Updating engine: Failed to bind to engine, reverting."

    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 94
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 95
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCheckedState(Ljava/lang/String;)V

    .line 97
    :cond_1
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->updateDefaultEngine(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCheckedState(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
