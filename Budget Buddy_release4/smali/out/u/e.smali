.class public final Lu/e;
.super Lu/h;
.source "SourceFile"


# instance fields
.field private final f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V
    .registers 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to use <fragment> tag to add fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lu/h;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iput-object p2, p0, Lu/e;->f:Landroid/view/ViewGroup;

    return-void
.end method
