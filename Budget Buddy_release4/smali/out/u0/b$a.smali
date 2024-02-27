.class Lu0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/b;-><init>(Lu0/b$c;Lr0/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu0/b;


# direct methods
.method constructor <init>(Lu0/b;)V
    .registers 2

    iput-object p1, p0, Lu0/b$a;->a:Lu0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lu0/b$a;->a:Lu0/b;

    invoke-static {v0}, Lu0/b;->b(Lu0/b;)Lu0/b$c;

    move-result-object v0

    iget-object v1, p0, Lu0/b$a;->a:Lu0/b;

    invoke-static {v1, p1}, Lu0/b;->a(Lu0/b;Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-interface {v0, p1}, Lu0/b$c;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method
