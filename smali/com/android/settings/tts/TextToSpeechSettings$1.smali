.class Lcom/android/settings/tts/TextToSpeechSettings$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TextToSpeechSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$000(Lcom/android/settings/tts/TextToSpeechSettings;Z)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string p1, "TextToSpeechSettings"

    const-string v0, "Error while trying to synthesize sample text"

    .line 286
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$000(Lcom/android/settings/tts/TextToSpeechSettings;Z)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$000(Lcom/android/settings/tts/TextToSpeechSettings;Z)V

    return-void
.end method
