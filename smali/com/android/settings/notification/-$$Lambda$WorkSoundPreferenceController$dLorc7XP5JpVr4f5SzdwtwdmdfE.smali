.class public final synthetic Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$dLorc7XP5JpVr4f5SzdwtwdmdfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/WorkSoundPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/WorkSoundPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$dLorc7XP5JpVr4f5SzdwtwdmdfE;->f$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$WorkSoundPreferenceController$dLorc7XP5JpVr4f5SzdwtwdmdfE;->f$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/WorkSoundPreferenceController;->lambda$updateWorkPreferences$0$WorkSoundPreferenceController(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
