.class public final synthetic Lcom/android/settings/tts/-$$Lambda$7eKGIVJQh3UO-8CMK9xEWsTcLdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/-$$Lambda$7eKGIVJQh3UO-8CMK9xEWsTcLdU;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/tts/-$$Lambda$7eKGIVJQh3UO-8CMK9xEWsTcLdU;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->onInitEngine(I)V

    return-void
.end method
