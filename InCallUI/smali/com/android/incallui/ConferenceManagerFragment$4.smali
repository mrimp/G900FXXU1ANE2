.class Lcom/android/incallui/ConferenceManagerFragment$4;
.super Ljava/lang/Object;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceManagerFragment;->onFinishInflate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceManagerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerFragment$4;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment$4;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->manageConferenceDoneClicked()V

    return-void
.end method