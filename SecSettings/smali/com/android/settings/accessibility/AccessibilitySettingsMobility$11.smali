.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assistant_menu"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
