.class public final synthetic Lcom/android/settings/tts/-$$Lambda$TtsEnginePreferenceFragment$FMoEpZlbdu64aUolMsMWdHuqokg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/tts/TtsEnginePreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/-$$Lambda$TtsEnginePreferenceFragment$FMoEpZlbdu64aUolMsMWdHuqokg;->f$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/tts/-$$Lambda$TtsEnginePreferenceFragment$FMoEpZlbdu64aUolMsMWdHuqokg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/-$$Lambda$TtsEnginePreferenceFragment$FMoEpZlbdu64aUolMsMWdHuqokg;->f$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/tts/-$$Lambda$TtsEnginePreferenceFragment$FMoEpZlbdu64aUolMsMWdHuqokg;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->lambda$onRadioButtonConfirmed$0$TtsEnginePreferenceFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
