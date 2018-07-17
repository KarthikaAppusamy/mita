package org.eclipse.mita.base.typesystem.types

import org.eclipse.xtend.lib.annotations.EqualsHashCode

@EqualsHashCode
class TypeFuncType extends AbstractType {
	private static Integer instanceCount = 0;
	
	protected final AbstractType from;
	protected final AbstractType to;
	
	new(AbstractType from, AbstractType to) {
		super('''tfunc_«instanceCount++»''');
		this.from = from;
		this.to = to;
	}
	
	override toString() {
		from + "(" + to + ")"
	}
	
	override replace(AbstractType from, AbstractType with) {
		return new TypeFuncType(this.from.replace(from, with), this.to.replace(from, with));
	}
	
		override getFreeVars() {
		return #[from, to].filter(FreeTypeVariable);
	}
	
}