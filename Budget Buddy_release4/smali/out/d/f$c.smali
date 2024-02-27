.class Ld/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ContentFrameLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f;->Q()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/f;


# direct methods
.method constructor <init>(Ld/f;)V
    .registers 2

    iput-object p1, p0, Ld/f$c;->a:Ld/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Ld/f$c;->a:Ld/f;

    invoke-virtual {v0}, Ld/f;->S()V

    return-void
.end method
