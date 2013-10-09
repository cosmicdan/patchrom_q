.class Lcom/android/settingsstock/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/Settings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/Settings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/Settings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/Settings$3;->this$0:Lcom/android/settingsstock/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/Settings$3;->this$0:Lcom/android/settingsstock/Settings;

    invoke-virtual {v0}, Lcom/android/settingsstock/Settings;->invalidateHeaders()V

    return-void
.end method
