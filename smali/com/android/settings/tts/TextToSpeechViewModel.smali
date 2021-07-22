.class public Lcom/android/settings/tts/TextToSpeechViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "TextToSpeechViewModel.java"


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 38
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mApplication:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method protected getTtsAndWhetherNew(Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/speech/tts/TextToSpeech$OnInitListener;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/speech/tts/TextToSpeech;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 67
    :goto_0
    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected onCleared()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechViewModel;->shutdownTts()V

    return-void
.end method

.method protected shutdownTts()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method
